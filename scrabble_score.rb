class Scrabble
  attr_reader :word

  LETTERS =
    { "A" => 1,
      "B" => 3,
      "C" => 3,
      "D" => 2,
      "E" => 1,
      "F" => 4,
      "G" => 2,
      "H" => 4,
      "I" => 1,
      "J" => 8,
      "K" => 5,
      "L" => 1,
      "M" => 3,
      "N" => 1,
      "O" => 1,
      "P" => 3,
      "Q" => 10,
      "R" => 1,
      "S" => 1,
      "T" => 1,
      "U" => 1,
      "V" => 4,
      "W" => 4,
      "X" => 8,
      "Y" => 4,
      "Z" => 10
    }

  def initialize(word)
    @word = word
  end

  def invalid?(word)
    return true if @word == nil
    return true unless @word.match(/[a-zA-Z]/)
    false
  end


  def score
    return 0 if invalid?(word)
    array = @word.upcase.chars
    score = 0
    array.each do |chr|
      score += LETTERS[chr]
    end
    score
  end

  def self.score(word)
    scrabble = Scrabble.new(word)
    scrabble.score
  end
end

a = Scrabble.new("catterbiller")
p a.score