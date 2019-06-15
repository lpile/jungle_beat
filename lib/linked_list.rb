class LinkedList
  attr_accessor :head, :string

  def initialize
    @head = nil
    @string = ""
  end

  def empty?                     # checks if list is empty
    @head.nil?
  end

  def tail_node(node)
    if node.tail?                # finds last node
      return node
    else                         # recursion to find last node
      tail_node(node.next_node)
    end
  end

  def append(data)
    node = Node.new(data)
    if empty?                    # sets head if empty
      @head = node
    else                         # adds new node to list
      tail_node(@head).next_node = node
    end
  end

  def count
    return 0 if empty?           # returns 0 with empty
    node_counter(@head)          # recursion for counter
  end

  def to_string
    return "" if @head.nil?      # returns empty string when empty
    node_string(@head)           # returns string of all nodes
  end

  def prepend(data)
    node = Node.new(data)        # sets new head node
    node.next_node = @head       # sets next_node to point at old head node
    @head = node                 # resets head node
  end

  def insert(position, data)
    node = Node.new(data)
    # find where to insert new node
    left_node = node_position(@head, position - 1)
    right_node = node_position(@head, position)
    # insert new node between left and right
    left_node.next_node = node
    node.next_node = right_node
  end

  def includes?(data)
    node_include(@head, data)
  end

  private

  def node_counter(node, counter = 1)
    return counter if node.tail?
    node_counter(node.next_node, counter += 1)
  end

  def node_string(node)
    @string += "#{node.data} "
    return @string.strip if node.tail?
    node_string(node.next_node)
  end

  def node_position(node, position, counter = 0)
    return node if position == counter
    node_position(node.next_node, position, counter += 1)
  end

  def node_include(node, data)
    return true if node.data == data
    return false if node.tail?
    node_include(node.next_node, data)
  end
end
