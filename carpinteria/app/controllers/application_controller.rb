class ApplicationController < ActionController::Base
	include Pagy::Backend
	before_action :authenticate_user!
	protect_from_forgery with: :exception

end
