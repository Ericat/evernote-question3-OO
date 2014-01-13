class List

  def initialize(integers)
    @integers = integers
  end

  def output
    output = []
    @integers.each_with_index do |num, index|
      copy = @integers.dup
      copy.delete_at(index)
      output << copy.reduce(:*)
    end
    output
  end
end

# puts "Type array size:"
# size = gets.chomp
# puts "Type your items, one by one:"
# integers = []
# until integers.size == size
#   integers << gets.chomp.to_i
# end

# List.new(integers).output



