# frozen_string_literal: true

require_relative '../src/manasa_and_stones'
RSpec.describe ManasaAndStones, 'Manasa and Stones' do
  before :each do
    @test = ManasaAndStones.new
  end
  describe '#test stones' do
    it 'return 2 3 4' do
      result = @test.stones(3, 1, 2)
      expect(result).to eq('2 3 4')
    end
  end
end
