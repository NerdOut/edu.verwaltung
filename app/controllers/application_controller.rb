class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :age, :admin, :active, :svnumber, :firstname, :lastname, :postal, :city, :vacdemand, :phonenumber, :fax, :mobile])
  end

  def authorize_admin
  redirect_to root_url, alert: 'Access Denied' if current_user.admin == false
  end

  private

  helper_method :current_user

end
