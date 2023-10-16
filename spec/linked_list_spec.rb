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
  
  describe '#find & #includes ' do 
    it'can find a certain beat' do 
      @list.append("deep")
      @list.append("woo")
      @list.append("shi")
      @list.append("shu")
      @list.append("blop")

      expect(@list.to_string).to eq("deep woo shi shu blop")
      expect(@list.find(2,1)).to eq("shi")
      expect(@list.find(1,3)).to eq("woo shi shu")
      
      expect(@list.includes?("deep")).to be true
      expect(@list.includes?("shi")).to be true


      expect(@list.includes?("dep")).to be false
    end
  end

  describe '#pop'do 
    it 'take the node out of the list and returns it' do 
      @list.append("deep")
      @list.append("woo")
      @list.append("shi")
      @list.append("shu")
      @list.append("blop")

      expect(@list.pop).to eq("blop")
      # expect(@list.pop).to eq("shu")
      expect(@list.to_string).to eq("deep woo shi")
    end
  end
end