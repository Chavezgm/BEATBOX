class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    node = Node.new(data)
    if @head.nil?
      @head = node 
    else 
      current = @head 
      while current.next_node != nil 
        current = current.next_node
      end
      current.next_node = node
    end
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