class Zoo
  attr_reader :street, :city, :state, :zip_code, :address, :inventory, :animal_count

  def initialize(street, city, state, zip_code, address)
    @street = street
    @city = city
    @state = state
    @zip_code = zip_code
    @address = address
    @inventory = []
    @animal_count = 0
  end

  def add_animal(animal)
    inventory << animal.kind
  end

  def animals_older_than(number)
    @inventory do |aged_animal|
      Animal.animal_age > number
    end
  end

  def total_weight_of_animals
  end

  def details
    details = {"total_weight" => total_weight_of_animals, "street_address" => @street_address}
  end


end
