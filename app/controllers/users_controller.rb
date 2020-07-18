skip_before_action :require_login

  #this is for root
  def home
  end

  def new
    @user = User.new
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      render json:  @user
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
    end
  end


  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :password) #password_digest was previously password...if you left as password_digest it would be stored unhashed (or something like that)
    end
end