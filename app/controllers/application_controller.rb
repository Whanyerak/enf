class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  protected
    def access_denied(exception)
      redirect_to '/', alert: exception.message
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:first_name, :last_name, :email, :password, :password_confirmation)
      end
    end
end
