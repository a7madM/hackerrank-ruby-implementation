# frozen_string_literal: true

require_relative '../src/balanced_brackets'
RSpec.describe BalancedBrackets, '()' do
  before :each do
    @test = BalancedBrackets.new
  end
  describe '#Balanced' do
    it 'is balcnced brackets' do
      result = @test.balanced?('()')
      expect(result).to be true
    end

    it 'is balanced brackets' do
      result = @test.balanced?('{[()]}')
      expect(result).to be true
    end

    it 'is balanced brackets' do
      result = @test.balanced?('{{[[(())]]}}')
      expect(result).to be true
    end
  end

  describe '#Not Balanced' do
    it 'is not balcnced brackets' do
      result = @test.balanced?('(]')
      expect(result).to be false
    end
    it 'is not balcnced brackets' do
      result = @test.balanced?('{[(])}')
      expect(result).to be false
    end

    it 'not balanced' do
      result = @test.balanced? '((]()(]([({]}({[)){}}[}({[{])(]{()[]}}{)}}]]{({)[}{('
      expect(result).to be false
    end

    it 'not balanced' do
      result = @test.balanced?('{{}(')
      expect(result).to be false
    end
  end
end
