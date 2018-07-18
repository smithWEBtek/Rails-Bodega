class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def new
    @user = User.new
    @users = User.all
  end

  def create
    if auth_hash
      # if logging in through facebook, create a password, assign them amount of money, and save the user
      @user = User.find_or_create_by(name: auth_hash['info']['name'])
      @user.password = SecureRandom.urlsafe_base64(n=6)
      @user.money = 25
      @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
      flash[:notice] = "Welcome to The Bodega!!"
    elsif
      @user = User.find_by(name: params[:user][:name])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user), notice: "Welcome to The Bodega!!"
        flash[:notice] = "Welcome to The Bodega!!"
      end
    else
      redirect_to signin_path
      flash[:notice] = "Please enter a valid name and/or password"
    end
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end

  def password
    @user.password = "password"
  end
end
