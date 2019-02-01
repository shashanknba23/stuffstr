class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	private
		def logged_in?
  		@current_user ||= User.find(session[:user_id]) if session[:user_id]
		end

		def current_user
			User.find(session[:user_id]) if session[:user_id]
		end

		def authenticate
			if current_user.present?
				current_user
			else
				redirect_to root_path, notice: 'Please Login first'
			end
		end

		helper_method :logged_in?
end
