class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

	def show
    @message = params[:message] if params[:message]
		@message ||= false
		
		respond_to do |f|
			f.html { render :show }
			f.json { render json: @user }
		end
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html {redirect_to user_path(@user), notice: "Welcome to the Bodega!"}
      else
        format.html {render 'new'}
        flash[:notice] = "Please add a value to every line."
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated."}
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :name,
      :password,
      :money,
      :admin
    )
  end
end
