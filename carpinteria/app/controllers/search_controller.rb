class SearchController < ApplicationController
  def create
  	palabra = params[:keyword]
  	@employees= Employee.where("name LIKE ? OR lastname LIKE ?", palabra, palabra)
  	
  	respond_to do |format|
  		#format.html {redirect_to root_path}
  		format.json {render json: @employees}
  		
  end


  end
end
