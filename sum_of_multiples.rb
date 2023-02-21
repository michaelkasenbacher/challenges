class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def self.to(num)
    arr = []
    1.upto(num-1) do |n|
      arr << n if n % 3 == 0 || n % 5 == 0
    end
    arr.uniq.sum
  end

  def to(num)
    arr = []
    1.upto(num-1) do |n|
      arr << n if @multiples.any? {|i| n % i == 0}
    end
    arr.uniq.sum
  end
end

# p SumOfMultiples
# p SumOfMultiples.to(10)
# p SumOfMultiples.new(4, 6).to(15)
