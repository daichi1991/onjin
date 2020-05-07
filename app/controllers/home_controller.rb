class HomeController < ApplicationController

  def index
    @sounds = Sound.includes([:creator, :likes, :downloads ]).joins(creator: :user ).where(:sounds => {:status => 1, :type_id => 1})
  end

end
