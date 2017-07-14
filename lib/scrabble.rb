class Scrabble

  def score(word)
    if word == nil
      return 0
    else
    letters = word.upcase.split('')
    total = 0
    letters.each do |letter|
      total += point_values[letter]
    end
    total
    end
  end


  def score_with_multipliers(word, letter_multiplier, word_multiplier = 1)
    held_score = []
    letters = word.upcase.split('')
    if word.length > 6
      total = 10
    else
      total = 0
    end
    letters.each do |letter|
      held_score << point_values[letter]
    end
    letter_multiplier.map.with_index do |number, index|
      total += number * held_score[index]
    end
    total * word_multiplier
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
