class StaticPagesController < ApplicationController
  def home
    # @user = User.new
  end

  def about
    @summoner_name = params[:search][:summoner_name]
    if @summoner_name == ""
      @summoner_name = "Wheatbox"
    end

    @game = Unirest::get("https://teemojson.p.mashape.com/player/na/#{@summoner_name}/recent_games", 
      {
        "X-Mashape-Authorization" => ENV['MASHAPE_KEY']
      })
  end
end
