require './spec/spec_helper'

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

  it "can .append" do
    @list.append("doop")

    expect(@list.head).to be_a(Node)
    expect(@list.head.data).to eq('doop')
    expect(@list.head.next_node).to eq(nil)
  end

  it "can .count" do
    expect(@list.count).to eq(0)

    @list.append("doop")

    expect(@list.count).to eq(1)
  end

  it "can .to_string" do
    expect(@list.to_string).to eq('')

    @list.append("doop")

    expect(@list.to_string).to eq('doop')
  end

  describe "can add two nodes" do
    before :each do
      @node_1 = @list.append("doop")
      @node_2 = @list.append("deep")
    end

    it "next node points to second node" do
      expect(@list.head.next_node).to eq(@node_2)
    end

    it ".count is 2" do
      expect(@list.count).to eq(2)
    end

    it ".to_string displays both strings" do
      expect(@list.to_string).to eq("#{@node_1.data} #{@node_2.data}")
    end
  end
end
