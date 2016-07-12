class SitesController < ApplicationController

  def film 
    response = HTTParty.get("http://swapi.co/api/films/#{params[:number]}")
    @title = response['title']
    @director = response['director']
    @episode_id = response['episode_id']
    @producer = response['producer']
    @release_date = response['release_date']
  end

  def people 
    response = HTTParty.get("http://swapi.co/api/people/#{params[:number]}")
    @name = response['name']
    @height = response['height']
    @mass = response['mass']
    @hair_color = response['hair_color']
    @skin_color = response['skin_color']
    @eye_color = response['eye_color']
    @birth_year = response['birth_year']
    @gender = response['gender']
  end

  def planets
    response = HTTParty.get("http://swapi.co/api/planets/#{params[:number]}")
    @name = response['name']
    @rotation_period = response['rotation_period']
    @orbital_period = response['orbital_period']
    @diameter = response['diameter']
    @climate = response['climate']
    @gravity = response['gravity']
    @terrain = response['terrain']
    @surface_water = response['surface_water']
    @population = response['population']
  end 

  def species
    response = HTTParty.get("http://swapi.co/api/species/#{params[:number]}")
    @name = response['name']
    @classification = response['classification']
    @designation = response['designation']
    @average_height = response['average_height']
    @skin_colors = response['skin_colors']
    @hair_colors = response['hair_colors']
    @eye_colors = response['eye_colors']
    @average_lifespan = response['average_lifespan']
    @homeworld = response['homeworld']
    @language = response['language']
  end

end
