class Node

    attr_accessor :value,:next, :prev
    
    def initialize(value)
        @value = value
        @next = nil
        @prev = nil
    end

end

class LinkedList

    def initialize
        @head = nil
    end

    def insert_at_begining(value)
        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
            return
        end

        @head.prev = new_node
        new_node.next = @head

        @head = new_node
    end

    def insert_at_end(value)

        new_node = Node.new(value)
        if @head.nil?
            @head = new_node
        end
        current = @head
        while current.next != nil
            current = current.next
        end
        current.next = new_node
        new_node.prev = current
    end

    def delete_from_end
        if @head.nil?
            return nil
        end
        current = @head
        while current.next
            prev = current
            current = current.next
            
        end
        prev.next = nil
    end

    def print_list
        current = @head
        while current
            print "#{current.value} ->"
            current = current.next
        end
        print "\n"
    end
end

linked_list = LinkedList.new
linked_list.insert_at_begining(2)
linked_list.insert_at_begining(1)
linked_list.insert_at_begining(0)
linked_list.insert_at_end(3)
linked_list.insert_at_end(4)
linked_list.insert_at_end(5)
linked_list.delete_from_end
linked_list.print_list