=begin
  if all sides are same = equilateral

  if two sides the same = isosceles

  if all sides are different = scalene
  
  if no sides given -> Argument Error

  if one side negative -> Argument Error

  if one side is >= than other two -> Argument Error
=end

class Triangle
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    error?(@side_a, @side_b, @side_c)
  end

  def kind
    type(@side_a, @side_b, @side_c)    
  end
end

def error?(a, b, c)
  raise ArgumentError if a <= 0 || b <= 0 || c <= 0
  raise ArgumentError if a >= (b + c) || b >= (a + c) || c >= (a + b)
end

def type(a, b, c)
  case 
  when a == b && b == c
    "equilateral"
  when a == b || b == c || a == c
    "isosceles"
  else
    "scalene"
  end
end

# triangle = Triangle.new(0, 0, 0)
# p triangle.kind