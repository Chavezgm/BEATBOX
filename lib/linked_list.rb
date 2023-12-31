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
    count_position = 0
    perevious_node = nil
    if position == 0
      node.next_node = @head
      @head = node 
    else 
      current_node = @head 
      until count_position == position || current_node.nil?
        perevious_node = current_node
        # binding.pry
        current_node = current_node.next_node
        count_position += 1
      end
      
      if position = count_position
        perevious_node.next_node = node
        node.next_node = current_node
      end
    end
  end
  
  def find (start_position, elements)
    result =[]
    current_node = @head
    count_position = 0

   while current_node && count_position < start_position + elements
      if count_position >= start_position
        result << current_node.data
      end
      # binding.pry
     current_node = current_node.next_node
     count_position += 1
    end
    result.join(" ")
  end

  def includes?(data)
    current_node = @head
    while current_node 
      if current_node.data == data 
        return true 
      end 
      current_node = current_node.next_node
    end 
    false
  end
  
  def pop
    if @head.nil?
      return nil
    end
  
    remove_data = nil
    if @head.next_node.nil?
      remove_data = @head 
      @head = nil
    else 
      current_node = @head
      second_last_node = nil

      while current_node.next_node && current_node.next_node.next_node
        current_node = current_node.next_node
      end
      remove_data = current_node.next_node
      current_node.next_node = nil
    end
    remove_data.data
    # binding.pry
  end 

end