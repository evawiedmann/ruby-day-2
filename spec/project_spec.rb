require('rspec')
require('project')

describe ('#score') do
  it("returns a scrabble score for a letter") do
    word = Word.new('CAR')
    expect(word.score()).to(eq(5))
  end
end
