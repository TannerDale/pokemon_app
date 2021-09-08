class PokemonController < ApplicationController
  def index
    pokemon = params[:pokemon]
    conn = Faraday.new("https://pokeapi.co")
    response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
    data = JSON.parse(response.body, symbolize_names: true)
    @pokemon = Pokemon.new(data)
  end
end
