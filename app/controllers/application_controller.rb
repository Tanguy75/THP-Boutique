class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_cart
  before_action :configure_permitted_parameters, if: :devise_controller?

 
  private
 
  def set_cart
    @current_cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
    @current_cart = Cart.create(user: current_user)
    session[:cart_id] = @current_cart.id
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, address_attributes: [:country, :state, :city, :area, :postal_code]])
  end

end


