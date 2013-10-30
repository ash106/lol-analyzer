class StaticPagesController < ApplicationController
  def home
    @user = User.new
  end

  def about
    @game = Unirest::get("https://teemojson.p.mashape.com/player/na/wheatbox/recent_games", 
      {
        "X-Mashape-Authorization" => ENV['MASHAPE_KEY']
      })
  end
end
