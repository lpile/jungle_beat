require 'rspec'
require './lib/node'

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
end
