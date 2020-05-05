class UsersController < ApplicationController
  def show
    if user_signed_in?
      @user = User.find_by(id: params[:id])
      @likes = Like.joins({:sound => {:creator => :user}}).where(likes: { user_id: @user.id }).order(:updated_at)
      @downloads = Download.joins({:sound => {:creator => :user}}).where(downloads: { user_id: @user.id }).order(:updated_at)


    else
      render home_index
    end
  end
end
