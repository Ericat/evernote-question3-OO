require_relative 'list'

class Command
  attr_reader :integers

  def parse
    puts "Type array size:"
    size = gets.chomp.to_i
    raise "Wrong input" unless size >= 2 && size < 1000
    puts "Type your items, one by one:"
    @integers = []
    until @integers.size == size
      @integers << gets.chomp.to_i
    end
    @integers
  end

  def execute
    puts List.new(parse).output
  end
end
