class UsersController < ApplicationController
  def show
    if user_signed_in?
      @user = current_user
    else
      render home_index
    end
  end
end
