require './spec/spec_helper'

describe Node do
  before :each do
    @node = Node.new('plop')
  end

  it 'exists' do
    expect(@node).to be_a(Node)
  end

  it 'has attributes' do
    expect(@node.data).to eq('plop')
    expect(@node.next_node).to eq(nil)
  end

  it "if node is tail" do
    expect(@node.tail?).to eq(true)

    @node.next_node = 'flop'

    expect(@node.tail?).to eq(false)
  end
end
