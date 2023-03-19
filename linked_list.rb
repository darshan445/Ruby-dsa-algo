class Node

    attr_accessor :value, :next

    def initialize(value, _next)
        @value = value
        @next = _next
    end

end

class LinkedList

    attr_accessor :head

    def initialize()
        @head = nil
    end

     #push — add a node to the end of the list

    def push(value)
        new_node = Node.new(value, nil)
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
        counter = list_length-2

        counter.times do 
            current = current.next
        end

        current.next = nil

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
        new_node = Node.new(value, nil)
        if @head.nil?
            @head = new_node
        end

        new_node.next = @head

        @head = new_node
    end

    #get — retrieve a node at a specific index in the list

    def get(index)

        current = @head
        counter = index-1
        counter.times do 
            current = current.next
        end
        current.inspect
    end


    #set — change the value of a node at a specific index in the list

    def set(value, index)

        current = @head
        counter = index-1
        counter.times do 
            current = current.next
        end
        current.value = value

    end

    #insert — add a new node at a specific index in the list

    def insert(value, index)
        
        new_node = Node.new(value, nil)

        current = @head
        counter = index-1
        counter.times do 
            current = current.next
        end

        current.next = new_node

    end



    private

    def list_length
        return length if @head.nil?

        length = 1

        current = @head

        while current.next != nil
            current = current.next
            length+=1
        end
        length
    end
end

 link_list = LinkedList.new

link_list.push(1)
link_list.push(2)
link_list.push(3)
link_list.push(4)
link_list.push(5)
# link_list.pop
# link_list.shift
# link_list.unshift(0)
# link_list.get(3)
# link_list.set(7,3)
link_list.insert(10,3)