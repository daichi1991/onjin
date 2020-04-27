class HomeController < ApplicationController
  def index
    @sounds = Sound.where(status: 1)
  end
end
