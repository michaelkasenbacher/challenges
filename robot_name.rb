class Robot
  LETTERS = ('A'..'Z').to_a
  NUMBERS = ('0'..'9').to_a
  LETTERS_LENGTH = 2
  NUMBERS_LENGTH = 3

  def name
    Kernel.srand
    if @name == nil
      new_name = ""
      LETTERS_LENGTH.times {new_name << LETTERS.sample}
      NUMBERS_LENGTH.times {new_name << NUMBERS.sample}
      @name = new_name
    else
      @name
    end    
  end

  def reset
    new_name = ""
    LETTERS_LENGTH.times {new_name << LETTERS.sample}
    NUMBERS_LENGTH.times {new_name << NUMBERS.sample}
    @name = new_name
  end
end


# class Robot
#   attr_accessor :name

#   def initialize
#     Kernel.srand
#     @name = []
#     @name << ('A'..'Z').to_a.sample(2)
#     @name << ('0'..'9').to_a.sample(3)
#     @name = @name.join
#   end

#   def reset
#     initialize
#   end
# end

robot = Robot.new
p robot.name
p robot.name
