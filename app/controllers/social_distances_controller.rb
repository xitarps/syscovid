class SocialDistancesController < ApplicationController
  before_action :generate_new_social_distance, only: [:create]
  def new
    @social_distance = SocialDistance.new
  end

  def create
    if user_signed_in? && (@social_distance.user_id = current_user.id)
      set_zipcode
      negative_and_flash
      return redirect_to users_dashboards_path :index if @social_distance.save

    else
      @social_distance.user_id = 1
      negative_and_flash
      return redirect_to new_user_registration_path if @social_distance.valid?

    end
    render :new
  end

  private

  def social_distance_params
    params
      .require(:social_distance)
      .permit(:how_many_residents, :residence_type,
              :bedrooms, :bathrooms, :rooms, :many_contacts, :been_outdoor,
              :many_times_outdoor, :supermarket, :pharmacy, :health_service,
              :commerce, :market, :workplace, :other_places,
              :public_transportation, :many_transportations, :bus, :subway,
              :train, :transport_apps, :car, :bicycle, :taxi,
              :other_transportations)
      .merge(social_distance_zip_code: generate_zip_code)
  end

  def generate_new_social_distance
    @social_distance = SocialDistance.new(social_distance_params)
  end

  def generate_flash
    flash[:tmp] = @social_distance if @social_distance.valid?
  end

  def generate_zip_code
    return current_user.user_zip_code if user_signed_in?

    '01001000'
  end

  def set_zipcode
    @social_distance.social_distance_zip_code = current_user.user_zip_code
  end

  def protect_from_negative
    return if @social_distance.many_transportations.nil?

    is_checked = @social_distance.public_transportation == 1
    is_negative = @social_distance.many_transportations < 1
    @social_distance.many_transportations = -1 if is_checked && is_negative
  end

  def negative_and_flash
    generate_flash
    protect_from_negative
  end
end
