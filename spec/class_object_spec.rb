require_relative '../car_color'
describe 'car_color' do
  describe '#print_color' do
    it 'correctly print car color' do
      car = Car.new("red")
      expect(car.print_color).to eq("red") 
    end
  end
end

