require_relative '../encryption'

# class should be string
# E should return B
# "THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG" should return "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
#

describe '#encrypt' do
  it 'should return a string class' do
    expect(encrypt('')).to be_a(String)
  end

  it 'should return B when given E' do
    expect(encrypt('E')).to eq('B')
  end

  it 'should return correct encryption for only string' do
    expect(encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")).to eq("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
  end

  it 'should return correct encryption with punctuations' do
    expect(encrypt("THE QUICK BROWN, FOX JUMPS OVER THE LAZY DOG!")).to eq("QEB NRFZH YOLTK, CLU GRJMP LSBO QEB IXWV ALD!")
  end

end
