require './spec/spec_helper'

describe 'Iteration 6 Spec:' do
  before :each do
    @jb = JungleBeat.new
    @jb.append("deep doo ditt woo hoo shu")
  end

  it 'can play sound' do
    expect(@jb.count).to eq(6)
    expect(@jb.list.count).to eq(6)
    @jb.play
  end
end
