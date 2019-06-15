require './spec/spec_helper'

describe 'Iteration 3 Spec:' do
  before :each do
    @list = LinkedList.new
    @node_1 = @list.append("plop")
    @node_2 = @list.append("suu")
  end

  describe "can .prepend" do
    before do
      @node_3 = @list.prepend("dop")
    end

    it "add new node to the beginning of the list" do
      expect(@list.head).to eq(@node_3)
      expect(@list.count).to eq(3)
      expect(@list.to_string).to eq('dop plop suu')
    end

    describe "can .insert" do
      it "any new node anywhere within list" do
        @list.insert(1, "woo")

        expect(@list.count).to eq(4)
        expect(@list.to_string).to eq('dop woo plop suu')
      end
    end
  end
end

# edge cases:
# how does prepend handle when list is empty
# how does insert handle when list is empty
# how does insert handle when list has one node
# how does insert handle when list has more than one node
