class UsersController < ApplicationController

  before_filter :authenticate_user!

  def new
  end

  def create
    #@user=User.new(params[:user])
    #if @user.save
    # render 'show'
    #end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index

  end

  def show
  end
end
