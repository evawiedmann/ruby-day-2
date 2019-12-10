require('rspec')
require('project')

describe ('#score') do
  it("returns a scrabble score for a letter") do
    word = Word.new('Q')
    expect(word.score()).to(eq(10))
  end
end
