require './spec/spec_helper'

describe Node do
  before :each do
    @node = Node.new('doop')
  end

  it 'exists' do
    expect(@node).to be_a(Node)
  end

  it 'has attributes' do
    expect(@node.data).to eq('doop')
    expect(@node.next_node).to eq(nil)
  end

  describe "instance methods" do
    it ".tail?" do
      expect(@node.tail?).to eq(true)

      @node.next_node = 'deep'

      expect(@node.tail?).to eq(false)
    end
  end
end
