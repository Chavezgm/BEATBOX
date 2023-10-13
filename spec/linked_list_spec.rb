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
    end
  end

  describe '#count' do 
    it 'counts nodes' do 
      @list.append("doop")
      expect(@list.count).to eq(1)
      expect(@list.head).to be_a(Node)
      expect(@list.head.next_node).to eq(nil)
      
      @list.append("deep")
      binding.pry

    end
  end
end