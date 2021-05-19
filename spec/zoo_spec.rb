require 'rspec'
require './lib/animal'
require './lib/zoo'

describe Zoo do
  before (:each) do
    @zoo = Zoo.new("Bronx Zoo", "2300 Southern Blvd", "Bronx", "NY", "10460")
  end
  it 'exists' do
    expect(@zoo).to be_an_instance_of(Zoo)
    expect(@zoo.street).to eq("Bronx Zoo")
    expect(@zoo.city).to eq("2300 Southern Blvd")
    expect(@zoo.state).to eq("Bronx")
    expect(@zoo.zip_code).to eq("NY")
    expect(@zoo.address).to eq("10460")
    expect(@zoo.animal_count).to eq(0)
  end

  it 'Has Blank array and default value 0' do
    expect(@zoo.animal_count).to eq(0)
    expect(@zoo.inventory).to eq([])
  end

  it 'Should have two new animals in inventory' do
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)
    @zoo.add_animal(animal_1)
    @zoo.add_animal(animal_2)
    expect(@zoo.inventory.count).to eq(2)
  end

  it 'returns animals older than' do
    animal_1 = Animal.new("Sea Otter", 10, 25)
    animal_2 = Animal.new("Red Panda", 5, 70)
    animal_3 = Animal.new("Capybara", 100, 150)
    animal_4 = Animal.new("Dolphin", 150, 200)

    @zoo.add_animal(animal_1)
    @zoo.add_animal(animal_2)
    @zoo.add_animal(animal_3)
    @zoo.add_animal(animal_4)

    @zoo.animals_older_than(250)
    expect(animals_older_than(250)).to eq()
    @zoo.animals_older_than(100)
    expect(animals_older_than(100)).to eq(animal_4)
    @zoo.animals_older_than(10)
    expect(animals_older_than(10)).to eq(animal_1, animal_3, animal_4)
  end
end
