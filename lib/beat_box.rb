class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    words = data
    words.each do |word|
      @list.append(word)
    end
  end
end