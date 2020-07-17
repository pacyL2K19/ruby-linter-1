require_relative '../lib/checks.rb'

describe CheckError do
  
  

  let(:checker) { CheckError.new('bug.rb')}

  describe '#check_trailing_spaces' do
    it 'should return trailing space error on line 3' do
      checker.check_trailing_spaces
      expect(checker.errors[0]).to eql('line:3:19: Error: Trailing whitespace detected.')
    end
  end

  describe '#check_indentation' do
    it 'should return indentation space error on line 4' do
      checker.check_indentation
      expect(checker.errors[0]).to eql('line:4 IndentationWidth: Use 2 spaces for indentation.')
    end
  end


end