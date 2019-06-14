class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(string)
    @head = Node.new(string)
  end

  def count
    @head.nil? ? 0 : 1
  end

  def to_string
    "#{@head.data}"
  end
end
