class Stack
  class UnderflowError < StandardError; end
  
  attr_accessor :items

  def initialize(items)
    @items = items
  end

  def depth
    2
  end 

  def push(item)
    items << item
  end 

  def top
    items.last
  end

  def pop
    raise UnderflowError.new('empty')
  end
end     