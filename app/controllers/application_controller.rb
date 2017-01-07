class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
      

  include ApplicationHelper

  private

  def configure_permitted_parameters
 #   devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.permit(:sign_up) do |user|
      user.permit(:name, :email, :role, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:sign_in) do |user|
      user.permit(:name, :password, :remember_me)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user|
      user.permit(:name, :email, :role, :current_password, :password, :password_confirmation)
    end
  
  end 
  # 以下の1行は消さないでください
 # def default_url_options() {privateIp: '10.0.0.44', containerPort: '3000', languageName: 'rails'}.merge(super) end

  protect_from_forgery with: :exception
end
