class HomeController < ApplicationController
  # The homepage
  def index
  end
  
  def register
    @dive_center = DiveCenter.new(:mailinglist => true)
  end
end
