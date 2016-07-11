class SitesController < ApplicationController

  def film 
    response = HTTParty.get("http://swapi.co/api/films/#{params[:number]}")
    @title = response['title']
    @director = response['director']
    @episode_id = response['episode_id']
    @producer = response['producer']
    @release_date = response['release_date']
  end
end
