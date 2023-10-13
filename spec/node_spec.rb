require './lib/node'

RSpec.describe Node do 
  before (:each) do 
    @node = Node.new("plop")
  end

  describe 'instantiates' do 
    it 'exists' do 
      expect(@node).to be_instance_of(Node)
    end
  end

  describe '#data' do 
    it 'calls data' do 
      expect(@node.data).to eq("plop")
    end
  end

  describe '#next_node' do 
    it 'expects node to be nil' do 
      expect(@node.next_node).to eq(nil)
    end
  end
end