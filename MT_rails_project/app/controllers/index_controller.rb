class IndexController < ApplicationController
  def welcome
  end

  def index
     @cameras = Camera.all 
 end

 def show
 	 @camera = Camera.find(params[:id])
 end

 def new
 end

 def create
 	 @camera = Camera.new(camera_whitelisted)

 	 @camera.save
 	 redirected_to @camera
 end

 private
 def camera_whitelisted
 	 params.require(:camera).permit(:brand, :model, :serial, :review)
 	 
 
 end
end
