class HomeController < ApplicationController
  def index
    @testimonies = Testimony.order("tweet_id desc").limit(5)
  end

end
