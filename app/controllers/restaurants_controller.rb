require 'longest_word'

class RestaurantsController < ApplicationController
  # Let's fake a DB
  RESTAURANTS = [
                  { name: "Solar dos Presuntos", address: "Shoreditch, London", category: "indian" },
                  { name: "Tasca da Avenida", address: "City, London", category: "sushi" }
                ]

  def index
  	@restaurants = RESTAURANTS
  	if params[:food_type]
  		@restaurants =  @restaurants.select {|r| r[:category] == params[:food_type] } 
  	end

  	solution_methods
  end

  def create
  	render plain: "You tried to create a new restaurants with name #{params[:name]}" 
  end

  def show
  	@restaurant = RESTAURANTS[params[:id].to_i-1]
  end
end
