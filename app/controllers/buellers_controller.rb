class BuellersController < ApplicationController
  
  def new
    @bueller = Bueller.new
end
  
  
   def create
   @bueller = Bueller.new(params[:bueller].permit(:Name, :Nickname, :Image, :Email))
     if @bueller.save
     redirect_to @bueller
    else
     render 'new'
  end
end
  

  
  
end