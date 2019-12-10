require('pry')

class Word
  def initialize(word)
    @word = word
  end

  def score()
    one_point = ['A','E','I','O','U','L','N','R','S','T']
    two_points = ['D', 'G']
    three_points = ['B', 'C', 'M', 'P']
    four_points = ['F', 'H', 'V', 'W', 'Y']
    five_points = ['K']
    eight_points = ['J', 'X']
    ten_points = ['Q', 'Z']
    score = 0
    letters = @word.chars()
    letters.each do |letter|
      if one_point.include?(letter)
        score += 1
      elsif two_points.include?(letter)
        score += 2
      elsif three_points.include?(letter)
        score += 3
      elsif four_points.include?(letter)
        score += 4
      elsif five_points.include?(letter)
        score += 5
      elsif eight_points.include?(letter)
        score += 8
      elsif ten_points.include?(letter)
        score += 10
      end
    end
    return score
  end
end
