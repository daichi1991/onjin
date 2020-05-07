class UsersController < ApplicationController
  def show
    if user_signed_in?
      @user = User.find_by(id: params[:id])
      @likes = Sound.includes([:creator, :likes, :downloads ]).joins(creator: :user ).where(likes: { user_id: @user.id })
      @downloads = Sound.includes([:creator, :likes, :downloads ]).joins(creator: :user ).where(downloads: { user_id: @user.id })
    else
      render home_index
    end
  end
end
