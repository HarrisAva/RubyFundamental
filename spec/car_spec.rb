require 'rspec'
require_relative '../car'

describe Car do
  car = Car.new("Toyota", "Corolla", "Blue")

  it 'should return correct make' do
    expect(car.make).to eq("Toyota")
  end

  it 'should return correct model' do
    expect(car.model).to eq("Corolla")
  end

  it 'should return correct color' do
    expect(car.color).to eq("Blue")
  end

  it 'should return correct info' do
    expect(car.info).to eq("Make: Toyota, Model: Corolla, Color: Blue")
  end

end