require './caesar_cipher'

describe '#caesar_cipher' do
  it 'returns modified string with the shift factor' do
    expect(caesar_cipher('hello', 5)).to eql('mjqqt')
  end

  it 'works with upcase and downcase letters' do
    expect(caesar_cipher('hEllO', 3)).to eql('kHooR')
  end

  it 'wraps from z to a and accepts punctuation' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end
end