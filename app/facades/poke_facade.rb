class PokeFacade
  class << self
    def get_a_pokemon(pokemon)
      # Moved to service
      # conn = Faraday.new("https://pokeapi.co")
      # response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
      # data = JSON.parse(response.body, symbolize_names: true)
      data = PokeService.call_for_pokemon(pokemon)
      Pokemon.new(data)
    end
  end
end
