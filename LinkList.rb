
class LinkedListNode
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)
		@value = value 
		@next_node = next_node
	end
end 


class Stack 
	attr_reader :data

	def initialize
	 	@data = nil
	end 
 
	def push(value)
		@data = LinkedListNode.new(value, @data)
	end 

	def pop
		return nil if @data.nil?

		value = @data.value
		@data = @data.next_node
		return value 
	end 
end 

def print_values(list_node)
	if list_node
		print "#{list_node.value} --> "
		print_values(list_node.next_node)
	else 
		print "nil\n"
	end 
end 

def reverse_list(list)
	stack = Stack.new

	until list.nil?
		stack.push(list)
		list = list.next_node
	end 
	
	list = tail = stack.pop
	until tail.nil?
		tail.next_node = stack.pop
		tail = tail.next_node
	end

	list
end 

node = nil
1000.times.reverse_each { |i| node = LinkedListNode.new(i, node) }

node0 = LinkedListNode.new(4)
node1 = LinkedListNode.new(3, node0)
node2 = LinkedListNode.new(2, node1)
node3 = LinkedListNode.new(1, node2)

print_values(node)

puts "-------"

stack = Stack.new
revlist = reverse_list(node)


print_values(revlist)
