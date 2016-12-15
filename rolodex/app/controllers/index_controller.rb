class IndexController < ApplicationController
  def index
     @names = Name.all 
 end

 def show
 	 @name = Name.find(params[:id])
 end

 def new
 end

 def create
 	 @name = Name.new(name_whitelisted)

 	 @Name.save
 	 redirected_to @name
 end

 private
 def name_whitelisted
 	 params.require(:name).permit(:name, :title, :age, :email)
 	 
 
 end

end
