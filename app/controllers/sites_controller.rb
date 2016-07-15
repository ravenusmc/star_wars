class SitesController < ApplicationController

    #My oh My quite a lot of not DRY code. I know, I know, I repeated myself a lot. I did not want.
    #The main point of this site was really for me to start to work with an API on my own. 
    #That is what I did with this project. I built it all myself without using any guides. 
    #I only focused a little on the design aspect of it. Again, the main focus was to get good at 
    #working with an API. If you want to fix this code then feel free to pull the code and work with 
    #it. I also believe that I should be able to combine many of these actions since so many of the 
    #properties repeat themselves. Well...now time to move onto anoher rails project...

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

  def vehicles 
    response = HTTParty.get("http://swapi.co/api/vehicles/#{params[:number]}")
    @name = response['name']
    @model = response['model']
    @manufacturer = response['manufacturer']
    @cost_in_credits = response['cost_in_credits']
    @length = response['length']
    @max_atmosphering_speed = response['max_atmosphering_speed']
    @crew = response['crew']
    @passengers = response['passengers']
    @cargo_capacity = response['cargo_capacity']
    @consumables = response['consumables']
    @vehicle_class = response['vehicle_class']
  end

  def starships
    response = HTTParty.get("http://swapi.co/api/starships/#{params[:number]}")
    @name = response['name']
    @model = response['model']
    @manufacturer = response['manufacturer']
    @cost_in_credits = response['cost_in_credits']
    @length = response['length']
    @max_atmosphering_speed = response['max_atmosphering_speed']
    @crew = response['crew']
    @passengers = response['passengers']
    @cargo_capacity = response['cargo_capacity']
    @consumables = response['consumables']
    @hyperdrive_rating = response['hyperdrive_rating']
    @starship_class = response['starship_class']
  end 

end
