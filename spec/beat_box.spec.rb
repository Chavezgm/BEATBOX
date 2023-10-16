require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do 
  before(:each) do 
    @bb = BeatBox.new
  end

  describe 'Instantiates' do 
    it 'exists' do 
      expect(@bb).to be_instance_of(BeatBox)
    end
  end

  describe ' The list' do 
    it 'has nothing in the list' do 
      @bb.list
      expect(@bb.list.head).to be nil
    end

    it 'appends items to the list' do 
      @bb.append("deep doo ditt")
      expect(@bb.list.head.data).to eq("deep")
    end

  end
end