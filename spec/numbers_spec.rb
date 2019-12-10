require('rspec')
require('numbers')

describe ('#words') do
  it("splits numbers into an array") do
    number = NumberInput.new("11312136")
    expect(number.words()).to(eq('ninety'))
  end
end
