class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    words = data.split
    words.each do |word|
      @list.append(word)
    end
  end

  def count 
    @list.count 
  end
  
  def play
    play = @list.to_string
    `say #{play}`
  end
end