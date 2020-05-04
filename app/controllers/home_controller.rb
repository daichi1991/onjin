class HomeController < ApplicationController
  def index
    @sounds = Sound.where(status: 1, type_id: 1)
    @soundbs = Sound.where(status: 1, type_id: 2)
  end
end
