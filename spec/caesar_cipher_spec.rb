require './caesar_cipher'

describe '#caesar_cipher' do
  it 'returns modified string with the shift factor' do
    expect(caesar_cipher('hello', 5)).to eql('mjqqt')
  end

  it 'works with upcase and downcase letters' do
    expect(caesar_cipher('hEllO', 3)).to eql('kHooR')
  end

  it 'wraps from z to a with positive shift' do
    expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
  end

  it 'wraps from z to a with large positive shift' do
    expect(caesar_cipher('Hello, World!', 75)).to eql('Ebiil, Tloia!')
  end

  it 'works with negative shift' do
    expect(caesar_cipher('hello', -2)).to eql('fcjjm')
  end

  it 'wraps from a to z with large negative shift' do
    expect(caesar_cipher('Hello, World!', -55)).to eql('Ebiil, Tloia!')
  end
end
