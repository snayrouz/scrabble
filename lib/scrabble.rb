class Scrabble

  attr_reader :word

  def initialize
    @word = word
  end

  def score(word)
    letters = word.upcase.split('')
    total = 0
    letters.each do |letter|
      total += point_values[letter]
    end
    total
  end


  def score_with_multipliers(word, index, multiplier)
    #input a word
    #something.map do |index|
      index * 
    #assign the value of the array elements to multiply against the value of the word
    # the third argument passed muiltiplies the total


    end
    total * multiplier

  end

  def point_values
    {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }
  end
end
