class MainController < ApplicationController
  def terms
  end

  def index
    return unless !flash[:new].nil? && user_signed_in?

    save_previous_form
    redirect_to new_self_test_path
  end

  private

  def save_previous_form
    @social_distance = SocialDistance.new(flash[:form_tmp])
    @social_distance.user_id = current_user.id
    @social_distance.save if @social_distance.valid?
  end
end
