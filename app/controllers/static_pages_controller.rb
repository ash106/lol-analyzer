class StaticPagesController < ApplicationController
  before_filter :set_unirest_header

  def home
    # @user = User.new
  end

  def about
    @summoner_name = params[:search][:summoner_name]
    if @summoner_name == ""
      @summoner_name = "Wheatbox"
    end

    @game = Unirest.get("https://teemojson.p.mashape.com/player/na/#{@summoner_name}/recent_games")
  end

  def champions
    @champions = Unirest.get("https://teemojson.p.mashape.com/datadragon/champion")
  end

  def items
    @items = Unirest.get("https://teemojson.p.mashape.com/datadragon/item")
  end

  def movespeed
    @champions = Unirest.get("https://teemojson.p.mashape.com/datadragon/champion")
  end

  private

  def set_unirest_header
    Unirest.default_header("X-Mashape-Authorization",ENV['MASHAPE_KEY'])
  end
end
