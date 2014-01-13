require './list'

describe "List" do
  let(:list) { List.new([5, 2, 2, 3])}

  it "should return 4 numbers when given 4 numbers" do
    expect(list.output.size).to eq(4)
  end  

  it "should return [12, 30, 30, 20] when given [5, 2, 2, 3]" do
    expect(list.output).to eq([12, 30, 30, 20])
  end
end