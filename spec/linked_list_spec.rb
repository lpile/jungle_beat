require 'rspec'
require './lib/node'
require './lib/linked_list'

describe LinkedList do
  before :each do
    @list = LinkedList.new
  end

  it 'exists' do
    expect(@list).to be_a(LinkedList)
  end

  it 'has attributes' do
    expect(@list.head).to eq(nil)
  end

  it "can append" do
    @list.append("doop")

    expect(@list.head).to be_a(Node)
    expect(@list.head.data).to eq('doop')
    expect(@list.head.next_node).to eq(nil)
  end

  it "can count" do
    expect(@list.count).to eq(0)

    @list.append("doop")

    expect(@list.count).to eq(1)
  end

  it "can to_string" do
    @list.append("doop")
    
    expect(@list.to_string).to eq('doop')
  end
end
