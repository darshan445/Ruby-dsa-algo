class Node

    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next = nil
    end

end

class LinkedList

    attr_accessor :head

    def initialize
        @head = nil
    end

     #push — add a node to the end of the list

    def push(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
            return
        end

        current = @head

        while current.next != nil
            current = current.next
        end

        current.next = new_node
    end

    #pop — remove the node at the end of the list

    def pop

        if @head.nil?
            return nil
        end

        current = @head

        while current.next.next
            current = current.next
        end

        current.next = nil 

        #or 

        # while current.next
        #     prev = current
        #     current = current.next
        # end

        # prev.next = nil

    end

    #shift — remove the node at the beginning of the list

    def shift

        if @head.nil?
            return nil
        end
        @head = @head.next
    end

    #unshift — add a node to the beginning of the list

    def unshift(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
        end

        new_node.next = @head

        @head = new_node
    end

    #get — retrieve a node at a specific index in the list

    def get(index)

        current = @head
        
        index.times do 
            current = current.next
        end
        puts "Index: #{index} value: #{current.value}"
    end


    #set — change the value of a node at a specific index in the list

    def set(value, index)

        current = @head
        
        index.times do 
            current = current.next
        end
        current.value = value

    end

    #insert — add a new node at a specific index in the list

    def insert(value, index)

        new_node = Node.new(value)

        current = @head
        index = index - 1
        index.times do 
            current = current.next
        end

        new_node.next = current.next
        
        current.next = new_node
    end

    #remove — delete a node at a specific index in the list

    def delete(position)
       current = @head
       prev = @head
       temp = @head
       index = 0

       if position == 0:
        @head = @head.next
        return
       end

       while current
        if index == position
            temp = current.next
            break
        end
        prev = current
        current = current.next
        index+=1
       end

       prev.next = temp
    end

    def size
        length = 0
        return length if @head.nil?

        current = @head

        while current
            current = current.next
            length+=1
        end
        length
    end

    def print_list
        return "list is empty" if @head.nil?
        current = @head

        while current
            print "#{current.value} -> "
            current = current.next 
        end

    end
end

 link_list = LinkedList.new

link_list.push(10)
link_list.push(20)
link_list.push(30)
link_list.push(40)
link_list.push(50)
link_list.insert(70,3)
link_list.delete(3)
# link_list.get(3)
# link_list.set(60, 3)

# link_list.shift
# link_list.pop
# link_list.unshift(0)
puts "Linkedlist Size: #{link_list.size}"
puts link_list.print_list
# link_list.shift
# link_list.unshift(0)
# link_list.get(3)
# link_list.set(7,3)
# link_list.insert(10,3)