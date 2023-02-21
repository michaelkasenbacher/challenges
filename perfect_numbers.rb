class PerfectNumber

  def self.classify(num)
    case
    when num <= 0 
      raise StandardError
    when sum_of_divisors(num) == num
      'perfect'
    when sum_of_divisors(num) < num
      'deficient'
    else
      'abundant'
    end
  end


  def self.sum_of_divisors(num)
    arr = []

    1.upto(num-1) do |n|
      arr << n if num % n == 0
    end

    arr.sum
  end
end