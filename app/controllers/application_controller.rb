class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ payment_attributes: [:card_number, :card_cvv, :card_expires_month, :card_expires_year] ])
  end
end
