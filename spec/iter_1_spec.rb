require './spec/spec_helper'

describe 'Iteration 1 Spec:' do
  before :each do
    @list = LinkedList.new
    @list.append("doop")
  end

  it "can .append" do
    expect(@list.head).to be_a(Node)
    expect(@list.head.data).to eq('doop')
    expect(@list.head.next_node).to eq(nil)
  end

  it "can .count" do
    expect(@list.count).to eq(1)
  end

  it "can .to_string" do
    expect(@list.to_string).to eq('doop')
  end
end
