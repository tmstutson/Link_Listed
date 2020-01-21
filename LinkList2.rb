class LinkedListNode
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)
		@value = value 
		@next_node = next_node
	end
end 
 

def print_values(node)
	if node
		print "#{node.value} --> "
		print_values(node.next_node)
	else 
		print "nil\n"
		return
	end 
end 

def reverse_list(node, previous=nil)
	while node
		ahead = node.next_node
		node.next_node = previous 
		previous = node
		node = ahead  
	end
	return previous 
end 


node_3 = LinkedListNode.new(3, nil)
node_2 = LinkedListNode.new(2, node_3)
node_1 = LinkedListNode.new(1, node_2)
node_0 = LinkedListNode.new(0, node_1)


print_values(node_0)

puts "-------"   

revlist = reverse_list(node_0)


print_values(revlist)