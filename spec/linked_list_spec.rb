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

  describe "instance methods" do
    it ".empty?" do
      expect(@list.empty?).to eq(true)

      @list.append("doop")

      expect(@list.empty?).to eq(false)
    end

    it ".tail_node" do
      @list.append("doop")
      node = @list.append("deep")
      expected = @list.tail_node(node)

      expect(expected).to eq(node)
    end
  end
end
