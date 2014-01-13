require './command'

describe "Command" do 

  it "should be accepting user input correctly" do
    command = Command.new
    command.stub(:gets) {'4'}
    command.should_receive(:gets).exactly(5).times
    command.parse
  end

  it 'should raise an error if size < 2' do
    command = Command.new
    command.stub(:gets) {'1'}
    expect {command.parse}.to raise_error("Wrong input")
  end

  it 'should raise an error if size > 1000' do
    command = Command.new
    command.stub(:gets) {'1001'}
    expect {command.parse}.to raise_error("Wrong input")
  end

  
end