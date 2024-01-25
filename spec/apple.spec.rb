require_relative'../apple'
describe 'apple' do
  describe '#print_name' do
    it 'correctly print fruit name' do
      apple = Apple.new("apple")
      expect(apple.print_name).to eq("apple")
    end
  end
end