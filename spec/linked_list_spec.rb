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
    xit 'counts & #appends' do 
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
end