require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do 
  before (:each) do 
    @list = LinkedList.new 
  end
  
  describe 'Instantiates' do 
    it 'exists' do 
      expect(@list).to be_instance_of(LinkedList)
    end
  end
end