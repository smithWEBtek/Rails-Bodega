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
    if auth
      @user = User.find_or_create_by(name: auth['info']['name'])
      binding.pry
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: "Welcome to The Bodega!!"
    elsif
      @user = User.find_by(name: params[:user][:name])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user), notice: "Welcome to The Bodega!!"
    else
      redirect_to signin_path
    end
  end
end

  private

  def auth
    request.env['omniauth.auth']
  end
end
