class ApplicationController < ActionController::Base
	include Pundit
	protect_from_forgery
	
	before_action :configure_permitted_parameters, if: :devise_controller?
	def configure_permitted_parameters
			devise_parameter_sanitizer.for(:sign_up)  { |u| u.permit(:name,  :cpf, 
			 :city, :telephone, :institution ,:email,:password, 
			 :password_confirmation,:birthday, :state, :shirt,:accommodation,
			 registereds_attributes: [:id, :user_id, :course_id])}
	end

# Pundit
rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
private
	def user_not_authorized
		flash[:alert] = "Você não tem permissão para acessar este item"
		redirect_to(request.referrer || root_path)
	end



end

