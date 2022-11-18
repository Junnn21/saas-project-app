def configure_permitted_parameters
	devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :password_confirmation])
	devise_parameter_sanitizer.permit(:account_update, keys: [:email, :current_password, member_attributes: [ :first_name, :last_name]])
end