class Diamond
  
  def self.make_diamond(letter)
    array1 = ("A"..letter).to_a
    array2 = ("A"...letter).to_a.reverse

    sides = array1.size-1
    middle = 0
    output = ""
    array1.each do |l|
      case l
      when "A"
        output << (" " * sides) + l + (" " * sides) + "\n"
        sides -= 1
        middle += 1       
      else
        output << (" " * sides) + l + (" " * middle) + l + (" " * sides) + "\n"
        sides -= 1 unless l == letter
        middle += 2 unless l == letter
      end
    end
    
    array2.each do |l|
      case l
      when "A"
        sides += 1
        output << (" " * sides) + l + (" " * sides) + "\n"
             
      else
        sides += 1
        middle -= 2
        output << (" " * sides) + l + (" " * middle) + l + (" " * sides) + "\n"
      end
    end
    output
  end
end

# puts Diamond.make_diamond("Z")