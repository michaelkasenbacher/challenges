class Series
  def initialize(input)
    @array = input.chars.map(&:to_i)
  end

  def slices(num)
    raise ArgumentError if num > @array.size
    output = []
    @array.each_cons(num) {|i| output << i}
    output
  end
end
