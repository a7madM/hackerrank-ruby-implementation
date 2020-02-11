require_relative '../src/beautiful_triplets'

RSpec.describe BeautifulTriplets, '()' do
  before :each do
    @test = BeautifulTriplets.new
  end
  describe '#testcase' do
    it 'return 3' do 
      result = @test.count_triplets(3, [1, 2, 4, 5, 7, 8, 10])
      expect(result).to eq(3)  
    end
  end
end
