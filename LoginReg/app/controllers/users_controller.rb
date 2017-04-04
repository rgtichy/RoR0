class UsersController < ApplicationController
  def create
    @user=User.new(take_params)
    if @user.save
      puts "********* valid *********"
    else
      puts "*************************"
      puts @user.password, @user.password_confirmation
      puts @user.errors.full_messages
      puts "*************************"
    end
  end
  private
  def take_params
    params.require(:user).permit(:first_name, :last_name, :password, :email, :password_confirmation)
  end
end
