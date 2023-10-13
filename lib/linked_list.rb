class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    node = Node.new(data)
    @head = node
    # binding.pry
  end

  def count 
    count = 0
    node = @head 

    while node != nil
      count += 1
      node = node.next_node
    end
    count
  end
end