class UsersController < ApplicationController
  def show
    if user_signed_in?
      @user = User.where(id: current_user.id)
    else
      render home_index
    end
  end
end
