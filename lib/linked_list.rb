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

  def to_string
    result = [] 
    current = @head
    while current
      result << current.data.to_s
      current = current.next_node
    end
    result.join(' ')
  end #concats elements of an array 

  #prepend adds the node that is passsed to the front which is the head 
  # similar to the append method but the next node is being assigned 
  # will pass an argument ()
  
  def prepend(data)
    node = Node.new(data)
    node.next_node = @head
    # binding.pry
    @head = node 
  end
  #creates node 
  #the new node now is pointing at the @head 
  # @head is now the new node that was created
  
  def insert(position, data)
    node = Node.new(data)
    # binding.pry
   
  end
end