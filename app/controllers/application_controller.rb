class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_sign_in_path_for(resource)
  	if resource.admin?
  		'/admin'
  	else
    	request.env['omniauth.origin'] || stored_location_for(resource) || root_path
    end
  end

  def admin_only!
		if !current_user.admin?
			# flash.now[:error] = "anouthorize"
			redirect_to root_path
		end
	end
end
