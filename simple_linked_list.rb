class Element
  attr_accessor :datum, :next_element

  def initialize(datum, next_element=nil)
    @datum = datum
    @next_element = next_element
  end

  def datum
    @datum
  end

  def tail?
    true unless next_element != nil
  end

  def next
    next_element
  end
end

class SimpleLinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def push(datum)
    element = Element.new(datum, head)
    self.head = element
  end

  def pop
    old = head
    self.head = head.next
    old.datum
  end

  def size
    size = 0
    current_elem = head
    while current_elem
      size += 1
      current_elem = current_elem.next
    end
    size
  end

  def self.from_a(data)
    new_list = SimpleLinkedList.new
    return new_list unless data
    data.reverse.each do |datum|
      new_list.push(datum)
    end
    new_list  
  end

  def to_a
    output = []
    current_elem = head
    while current_elem
      output << current_elem.datum
      current_elem = current_elem.next
    end
    output
  end

  def reverse
    SimpleLinkedList.from_a(to_a.reverse)
  end

  def empty?
    head.nil?    
  end

  def peek
    return head.datum unless head.nil?
    nil
  end
end

p list = SimpleLinkedList.from_a([1, 2])
puts
p list.to_a
puts
p list.reverse






