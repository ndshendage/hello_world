class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  #before_action :authenticate_user!
  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :gender, :department, :birth_date, :contact_no, :qualification, :joining_date, :blood_group, :role_id, :company_id)}
  # end
  # devise_parameter_sanitizer.for(:sign_up) do |u|
  #     u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :gender, :department, :birth_date, :contact_no, :qualification, :joining_date, :blood_group, :role_id, :company_id)
  #   end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation, :first_name, :last_name, :gender, :department, :birth_date, :contact_no, :qualification, :joining_date, :blood_group, :role_id, :company_id])
  end
  
    

end
