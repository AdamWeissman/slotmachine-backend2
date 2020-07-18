class SessionsController < ApplicationController
  skip_before_action :require_login

  def new
    @user = User.new
    #render :login
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      #redirect_to 
    else
      #flash[:error] = "Sorry #{User.find_by(email: params[:user][:email]).email}, your password is incorrect!"
      #redirect_to '/login'
    end
  end


  #this is for logout
  def destroy
    session.clear
    #redirect_to '/'
  end