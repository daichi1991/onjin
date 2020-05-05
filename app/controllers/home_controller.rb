class HomeController < ApplicationController
  def index
    @sounds = Sound.joins({:creator => :user}).where(:sounds => {:status => 1, :type_id => 1})
  end
end
