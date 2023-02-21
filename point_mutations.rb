class DNA
  def initialize(str)
    @str = str
  end

  def hamming_distance(input)
    counter = 0
    arr1 = @str.chars
    arr2 = input.chars

    if arr1.size > arr2.size
      arr1 = arr1.slice(0, arr2.size)
    elsif arr2.size > arr1.size
      arr2 = arr2.slice(0, arr1.size)
    end

    arr1.each_with_index {|char, idx|
      counter += 1 if char != arr2[idx]}
    counter
  end
end

DNA.new('GACTACGGACAGGGTAGGGAAT').hamming_distance('GACATCGCACACC')
