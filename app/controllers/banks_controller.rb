class BanksController < ApplicationController

  def new
    if logged_in?
      @bank = @user.banks.new
    end
  end

  def create
    if logged_in?
      @bank = @user.banks.new(params[:total])
      @bank.save
      render json: @bank
    end
  end
  
  def update
    @user = current_user
    @bank = @user.bank
    @bank = params[:total]
    render json: @bank
  end

  def show

    render json: @bank
  end

end