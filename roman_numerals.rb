NUMS = {"M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90, "L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1}


class RomanNumeral
  def initialize(arabic)
    @arabic = arabic
  end

  def to_roman
    output = ""
    remainder = @arabic
    NUMS.each do |key, value|
      current, remainder = remainder.divmod(value)
      output << key * current
    end
    output
  end
end

