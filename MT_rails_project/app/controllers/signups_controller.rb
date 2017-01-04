class SignupsController < ApplicationController
		def index
     @signups = Signup.all 
 end

 def show
 	 @signup = Signup.find(params[:id])
 end

 def new
 end

 def create
 	 @signup = Signup.new(signup_whitelisted)

 	 @signup.save
 	 redirect_to @signup
 end

 private
 def signup_whitelisted
 	 params.require(:signup).permit(:name, :email, :password, :confirmpassword)
 	 
 
 end
end
