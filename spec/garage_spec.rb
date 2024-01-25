require 'rspec'
require_relative '../car' # need Car class
require_relative '../garage'

describe Garage do
  # garage = Garage.new
  let(:car1) { Car.new("Toyota", "Corolla", "Blue") }
  let(:car2) { Car.new("Honda", "Civic", "Red") }
  let(:garage) { Garage.new }


  before(:each) do
    garage.add_car(car1)
    garage.add_car(car2)
  end

  after(:each) do
    garage.clear_cars
  end

  it 'should list all cars' do
      # expect(Garage.list_cars).to eq([("Make: Toyota, Model: Corolla, Color: Blue"), ("Make: Honda, Model: Civic, Color: Red")])
    expect(garage.list_cars).to eq([car1.info, car2.info])
    end

     it 'should find cars by color' do
  #     expect(Garage.find_cars_by_color("Red")).to eq(["Make: Honda, Model: Civic, Color: Red"])])
    expect(garage.find_cars_by_color("Red")).to eq([car2.info])
     end

     it 'should remove a car' do
       garage.remove_car("Toyota", "Corolla")
       expect(garage.list_cars).not_to include(car1.info)
   end
end