require_relative '../caesar'

describe '#caesar_cipher' do
  context 'input is all lowercase' do
    it 'returns output with all lowercase' do
      string = 'hello'
      expected = 'ifmmp'
      result = caesar_cipher(string, 1)
      expect(result).to eq(expected)
    end
  end
  context 'input is all uppercase' do
    it 'returns output with all uppercase' do
      string = 'HELLO'
      expected = 'IFMMP'
      result = caesar_cipher(string, 1)
      expect(result).to eq(expected)
    end
  end
  context 'input is at the end of the alphabet' do
    it 'loops back to the start' do
      string = 'Ziad'
      expected = 'Ajbe'
      result = caesar_cipher(string, 1)
      expect(result).to eq(expected)
    end
  end
  context 'input contains spaces and punctuation' do
    it 'preserves their location' do
      string = 'Hello, Ziad!'
      expected = 'Ifmmp, Ajbe!'
      result = caesar_cipher(string, 1)
      expect(result).to eq(expected)
    end
  end
end