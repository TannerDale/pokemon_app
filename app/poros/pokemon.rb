class Pokemon
<<<<<<< HEAD
  attr_reader :name,
              :number,
              :image,
              :shiny
=======
  attr_reader :name, :number, :image
>>>>>>> get_started

  def initialize(data)
    @name = data[:name].capitalize
    @number = data[:id]
    @image = data[:sprites][:front_default]
<<<<<<< HEAD
    @shiny = data[:sprites][:front_shiny]
  end
end
=======
  end
end
>>>>>>> get_started
