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
    end
  end
  
  def update
    @bank = params[:total]
  end

  def show
  end

end