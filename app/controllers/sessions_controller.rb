class SessionsController < ApplicationController
  def new
  end
  def create
    @user = User.find_by(email: params[:sessions][:email].downcase)
   if @user && @user.authenticate(params[:session][:password])
   else
    render'new'
   end
  end

 def destroy
     session[:user_id ]= nil
     redirect_to'/'
 end
end
