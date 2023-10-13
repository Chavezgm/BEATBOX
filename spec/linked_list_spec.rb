require "./lib/linked_list"
require "./lib/node"
require "pry"
RSpec.describe LinkedList do 
  before (:each) do 
    @list = LinkedList.new 
  end
  
  describe 'Instantiates' do 
    it 'exists' do 
      expect(@list).to be_instance_of(LinkedList)
    end
  end

  describe '#head' do 
    it 'expects head to be nil' do 
      expect(@list.head).to eq(nil)
    end
  end
  
  describe '#append' do 
  it 'appends beats and checks list' do 
    @list.append("doop")
    expect(@list.head.data).to eq("doop")
    expect(@list.head.next_node).to eq(nil)
    expect(@list.count).to eq(1)
    expect(@list.to_string).to eq("doop")
    
  end
end

describe '#count & #appends' do 
it 'counts & appends beats' do 
     expect(@list.head).to eq(nil)
      @list.append("doop")
      expect(@list.count).to eq(1)
      expect(@list.head).to be_a(Node)
      expect(@list.head.next_node).to eq(nil)
      
      @list.append("deep")
      expect(@list.head.next_node).to be_a(Node)
      expect(@list.count).to eq(2)
      # binding.pry
      expect(@list.to_string).to eq("doop deep")

    end
  end

  describe '#prepend & insert' do 
    it 'prepends & inserts a beat in the list' do 
      @list.append("plop")
      expect(@list.to_string).to eq("plop")

      @list.append("suu")
      expect(@list.to_string).to eq("plop suu")

      @list.prepend("dop")
      expect(@list.to_string).to eq("dop plop suu")
      expect(@list.count).to eq(3)

      @list.insert(1, "woo")
      expect(@list.to_string).to eq("dop woo plop suu")

    end
  end
end