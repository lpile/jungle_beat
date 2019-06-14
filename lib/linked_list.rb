class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
    @string = ""
  end

  def append(string)
    if @head == nil            # sets head if there's no nodes
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

  def prepend(string)
    if @head == nil            # sets head if there's no nodes
      @head = Node.new(string)
    else                       # sets new head node
      node = Node.new(string)
      node.next_node = @head   # sets next_node to point at old head node
      @head = node             # resets head node
    end
  end

  def insert(position, string)
    if @head == nil            # sets head if there's no nodes
      @head = Node.new(string)
    elsif count == 1           # places new node if there's only one node in linkedlist
      if position == 0
        prepend(string)
      else
        append(string)
      end
    else
      node = Node.new(string)
      # find where to insert new node
      left_node = node_position(@head, position - 1)
      right_node = node_position(@head, position)
      # insert new node between left and right
      left_node.next_node = node
      node.next_node = right_node
      return node
    end
  end

  private

  def node_counter(node, counter)
    return counter if node.tail?
    node_counter(node.next_node, counter += 1)
  end

  def node_string(node)
    @string += node.data + " "
    return @string.strip if node.tail?
    node_string(node.next_node)
  end

  def node_position(node, position, counter = 0)
    return node if position == counter
    node_position(node.next_node, position, counter += 1)
  end
end
