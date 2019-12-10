require('pry')

class NumberInput
  def initialize(number)
    @number = number
    @minus_one = {
      '0' => '',
      '1'=>'one',
      '2'=>'two',
      '3'=>'three',
      '4'=>'four',
      '5'=>'five',
      '6'=>'six',
      '7'=>'seven',
      '8'=>'eight',
      '9'=>'nine'
    }
    @minus_two = {
      '0' => '',
      '1'=>'other',
      '2'=>'twenty',
      '3'=>'thirty',
      '4'=>'fourty',
      '5'=>'fifty',
      '6'=>'sixty',
      '7'=>'seventy',
      '8'=>'eighty',
      '9'=>'ninety'
    }
    @divisible_three = {
      '0' => '',
      '1'=>'one hundred ',
      '2'=>'two hundred ',
      '3'=>'three hundred ',
      '4'=>'four hundred ',
      '5'=>'five hundred ',
      '6'=>'six hundred ',
      '7'=>'seven hundred ',
      '8'=>'eight hundred ',
      '9'=>'nine hundred '
    }
    @teens = {
      '0' => ' ten ',
      '1'=>'eleven',
      '2'=>'twelve',
      '3'=>'thirteen',
      '4'=>'fourteen',
      '5'=>'fifteen',
      '6'=>'sixteen',
      '7'=>'seventeen',
      '8'=>'eightteen',
      '9'=>'nineteen'
    }
  end

  def words()
    words_array = []
    number_array = @number.chars()
    while number_array.length > 0
    if (number_array.length - 1) % 3 == 0 || number_array.length - 1 == 0
      words_array.push(@minus_one.fetch(number_array[0]))
    elsif (number_array.length - 2) % 3 == 0 || number_array.length - 2 == 0
      if number_array[0] === '1'
        number_array.shift
        words_array.push(@teens.fetch(number_array[0]))
      else
        words_array.push(@minus_two.fetch(number_array[0]))
      end
    elsif number_array.length % 3 == 0
      words_array.push(@divisible_three.fetch(number_array[0]))
    end
    number_array.shift
  end
  length_number = @number.chars().length
if length_number === 4
  words_array.insert(1," thousand ")
elsif length_number === 5 || length_number === 6
  words_array.insert(2," thousand ")
elsif length_number === 7
  words_array.insert(1," million ")
  words_array.insert(4," thousand ")
elsif length_number === 8
  if @number.chars[0] == '1'
    words_array.insert(1," million ")
    words_array.insert(5," thousand ")
  else
  words_array.insert(2," million ")
  words_array.insert(6," thousand ")
  end
elsif length_number === 9
  words_array.insert(3," million ")
  words_array.insert(6," thousand ")

elsif length_number === 10
  words_array.insert(1," billion ")
  words_array.insert(5," million ")
  words_array.insert(9," thousand ")
elsif length_number === 11
  words_array.insert(2," billion ")
  words_array.insert(5," million ")
  words_array.insert(9," thousand ")
elsif length_number === 12
  if @number.chars[0] == '1'
    words_array.insert(2," billion ")
    words_array.insert(6," million ")
    words_array.insert(10," thousand ")
  else
  words_array.insert(2," billion ")
  words_array.insert(6," million ")
  words_array.insert(10," thousand ")
end
elsif length_number === 13
  words_array.insert(1, ' trillion ')
  words_array.insert(5," billion ")
  words_array.insert(8," million ")
  words_array.insert(12," thousand ")
end
result = words_array.join()

  end
end
