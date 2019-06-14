class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
    @string = ""
  end

  def append(string)
    if @head == nil            # sets head
      @head = Node.new(string)
    else                       # sets next_node to point new node
      @head.next_node = Node.new(string)
    end
  end

  def count
    return 0 if @head.nil?
    node_counter(@head, 1)
  end

  def to_string
    if @head.nil?              # returns empty string when there's no node
      return ""
    else                       # returns string of all nodes
      node_string(@head)
    end
  end

  def node_counter(node, counter)
    return counter if node.tail?
    node_counter(node.next_node, counter += 1)
  end

  def node_string(node)
    @string += node.data + " "
    return @string.strip if node.tail?
    node_string(node.next_node)
  end
end
