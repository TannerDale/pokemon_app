class PokemonController < ApplicationController
  def index
    pokemon = params[:pokemon]
    # Moved to facade
    # conn = Faraday.new("https://pokeapi.co")
    # response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
    # data = JSON.parse(response.body, symbolize_names: true)
    # data = PokeService.call_for_pokemon(pokemon)
    @pokemon = PokeFacade.get_a_pokemon(pokemon)
  end
end
