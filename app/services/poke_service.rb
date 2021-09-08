class PokeService
  class << self
    # Endpoints
    def call_for_pokemon(pokemon)
      response = conn.get("/api/v2/pokemon-form/#{pokemon}/")
      parse_data(response)
    end

    private

    def conn
      Faraday.new("https://pokeapi.co")
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
