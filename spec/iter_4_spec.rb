require './spec/spec_helper'

describe 'Iteration 4 Spec:' do
  before :each do
    @list = LinkedList.new
    @list.append("deep")
    @list.append("woo")
    @list.append("shi")
    @list.append("shu")
    @list.append("blop")
  end

  describe 'can .find' do
    it "one node" do
      expect(@list.find(2, 1)).to eq("shi")
    end

    it "find a range of nodes" do
      expect(@list.find(1, 3)).to eq("woo shi shu")
    end
  end

  describe 'can .includes?' do
    it "a node in list" do
      expect(@list.includes?("deep")).to eq(true)
    end

    it "a node not in list" do
      expect(@list.includes?("dep")).to eq(false)
    end
  end

  it "can .pop" do
    @list.pop
    @list.pop

    expect(@list.to_string).to eq("deep woo shi")
  end
end

# edge cases:
# how does find handle range outside list
# how does pop handle range when list is empty
