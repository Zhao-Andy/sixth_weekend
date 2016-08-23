require 'RSpec'
require './algo/prime_number.rb'

RSpec.describe '#prime?' do
  it 'checks that zero is not prime' do
    expect(prime?(0)).to eq(false)
  end

  it 'checks that one is not prime' do
    expect(prime?(1)).to eq(false)
  end

  it 'checks that 2 is prime' do
    expect(prime?(2)).to eq(true)
  end

  it 'checks that 11 is prime' do
    expect(prime?(11)).to eq(true)
  end

  it 'checks that 15 is not prime' do
    expect(prime?(15)).to eq(false)
  end
end

RSpec.describe '#highest_prime_number_under' do
  it 'returns 3 when given 4' do
    expect(highest_prime_number_under(4)).to eq(3)
  end

  it 'returns 101 when given 102' do
    expect(highest_prime_number_under(102)).to eq(101)
  end

  it 'returns 991 when given 996' do
    expect(highest_prime_number_under(996)).to eq(991)
  end
end
