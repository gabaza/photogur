class UsersController < ApplicationController

def new
  @user = User.new
end

def create
  @user = User.new

    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    # Rule of thumb:
    # Use _path in views
    # Use _url in controllers
    if @user.save
      # flash: 'Welcome to Rainforest'
      redirect_to root_url
    else
      # flash: 'Error, please try again!'
      render :new
    end
end

#show method not needed
# def show
#   @user = User.find(params[:id])
# end


end
