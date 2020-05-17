class MainController < ApplicationController
  def terms
  end

  def index
    puts '!!!!'
    puts flash[:new]
    puts '####'
    return unless !flash[:new].nil? && user_signed_in?

    save_previous_form
    redirect_to new_self_test_path
  end

  private

  def save_previous_form
    @social_distance = SocialDistance.new(flash[:form_tmp])
    @social_distance.user_id = current_user.id
    @social_distance.social_distance_zip_code = current_user.user_zip_code
    @social_distance.save if @social_distance.valid?
  end
end
