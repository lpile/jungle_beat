require './spec/spec_helper'

describe 'Iteration 2 Spec:' do
  before :each do
    @list = LinkedList.new
    @node_1 = @list.append("doop")
    @node_2 = @list.append("deep")
  end

  describe "add multiple nodes" do
    it "head.next_node points to second node" do
      expect(@list.head.next_node).to eq(@node_2)
    end

    it ".count is 2" do
      expect(@list.count).to eq(2)
    end

    it ".to_string displays both strings" do
      expect(@list.to_string).to eq("#{@node_1.data} #{@node_2.data}")
    end

    it "add third node" do
      @node_3 = @list.append("derp")

      expect(@node_2.next_node).to eq(@node_3)
      expect(@list.count).to eq(3)
      expect(@list.to_string).to eq("#{@node_1.data} #{@node_2.data} #{@node_3.data}")
    end
  end
end
