require_relative '../src/minimum_distance'
RSpec.describe MinimumdDistance, 'MinimumdDistance' do
  before :each do
    @test = MinimumdDistance.new
  end
  describe '#minimum_distance positive' do
    it 'return 3' do
      array = [7, 1, 3, 4, 1, 7]
      result = @test.minimum_distance(array)
      expect(result).to eq(3)
    end
  end
end
