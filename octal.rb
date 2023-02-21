class Octal
  def initialize(string)
    @octal = string
  end

  def to_decimal
    return 0 if @octal.match(/[a-zA-Z]/)
    arr = @octal.to_i.digits
    return 0 if arr.any? {|num| num == 8 || num == 9}
    output = 0
    arr.each_with_index do |num, idx|
      output += num * (8 ** idx)
    end
    output
  end

end


oct = Octal.new('234abc')
p oct.to_decimal