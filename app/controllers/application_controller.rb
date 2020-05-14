class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :send_user_from_new, if: :devise_controller?, only: [:new]
  after_action :send_user_from_create, if: :devise_controller?, only: [:create]
  before_action :send_user_from_create, if: :devise_controller?, only: [:create]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer
      .permit(:sign_up) do |u|
        u.permit(:user_zip_code, :email,
                 :password, :password_confirmation, :country)
      end
    devise_parameter_sanitizer
      .permit(:account_update) do |u|
        u.permit(:user_zip_code, :email, :password,
                 :password_confirmation, :current_password, :country)
      end
  end

  def send_user_from_new
    flash[:tmp2] = flash[:tmp]
    @test = flash[:tmp]
  end

  def send_user_from_create
    flash[:form_tmp] = @test unless @test.nil?
    flash[:form_tmp] = flash[:tmp2] unless flash[:tmp2].nil?
    flash[:new] = true
    @test = flash[:form_tmp]
    flash[:form_tmp] = @test unless @test.nil?
  end
end
