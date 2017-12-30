require_relative '../src/lisa_book'
RSpec.describe LisaBook, 'LisaBook' do
  before :each do
    @test = LisaBook.new
  end
  describe '#split problems within pages' do
    it 'special problems' do
      k = 3
      chapters = [4, 2, 6, 1, 10]

      special_problems = @test.special_problems k, chapters
      expect(special_problems).to eq(4)
    end
  end
end
