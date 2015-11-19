class UsersController < ApplicationController
  
  def new
    # form for each user to fill out their profile
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'Thanks! Here is the Download Link!' }
        format.json { render :show, status: :created, location: @listing }

      else
        format.html { render :new }
        format.json { render json: @user.errors, status: unprocessable_entity }
      end
    end

  end
  
  def edit
    
  end
  
  def update
    
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email)
    end
  
  
end