require_relative '../math_operations'
describe 'math_operations' do
  describe '#add' do
    it 'correctly adds two numbers' do
      expect(add(2,3)).to eq(5)
    end
  end
end

require_relative '../math_operations'
describe 'math_operations' do
  describe '#subtract' do
    it 'correctly subtracts two numbers' do
      expect(subtract(3,2)).to eq(1)
    end
  end
end

require_relative '../exercise'
describe 'exercise' do
  describe '#multiply' do
    it 'correctly multiplies two numbers' do
      expect(multiply(2,3)).to eq(6)
    end
  end
end



