class CustomSet
  attr_accessor :set

  def initialize(set=[])
    @set = set
  end

  def empty?
    set.empty?
  end

  def contains?(int)
    set.include?(int)
  end
 
  def subset?(subset)
    case 
    when set.any? && subset.empty?
      false      
    when set.any? && subset.empty?
      false
    when set.any? && subset.class == self.class
      set.all? {|num| subset.set.include?(num)}
    when set.any?
      set.all? {|num| subset.include?(num)}
    else
      true
    end
  end

  def disjoint?(subset)
    case
    when set.empty? && subset.set.empty?
      true      
    when set.empty? && subset.set.any?
      true
    when set.any? && subset.set.empty?
      true
    when set.any? {|num| subset.set.include?(num)}
      false
    else
      true      
    end
  end

  def eql?(subset)
    case
    when set.empty? && subset.set.empty?
      true      
    when set.empty? && subset.set.any?
      false
    when set.any? && subset.set.empty?
      false
    when subset.set.all? {|num| set.include?(num)}
      true
    else
      false      
    end
  end

  def add(int)
    set << int unless set.include?(int)
    self   
  end

  def ==(other)
    set == other.set
  end

  def intersection(subset)
    int_array = []
    subset.set.each {|int| int_array << int if set.include?(int)}
    int_array.sort!
    CustomSet.new(int_array)
  end
  
  def difference(subset)
    int_array = []
    set.each {|int| int_array << int unless subset.set.include?(int)}
    CustomSet.new(int_array)
  end

  def union(subset)
    int_array = (set + subset.set).uniq.sort
    CustomSet.new(int_array)
  end
end

set = CustomSet.new
p set.intersection(CustomSet.new)







