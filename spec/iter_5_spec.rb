require './spec/spec_helper'

describe JungleBeat do
  before :each do
    @jb = JungleBeat.new
  end

  it 'exists' do
    expect(@jb).to be_a(JungleBeat)
  end

  it 'has attributes' do
    expect(@jb.list).to be_a(LinkedList)
    expect(@jb.list.head).to eq(nil)
  end

  describe "instance methods" do
    before :each do
      @jb.append("deep doo ditt")
    end

    it "can .append" do
      expect(@jb.list.head.data).to eq('deep')
      expect(@jb.list.head.next_node.data).to eq('doo')
    end

    it "can .count" do
      @jb.append("woo hoo shu")

      expect(@jb.count).to eq(6)
    end
  end
end
