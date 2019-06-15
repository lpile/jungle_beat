class JungleBeat
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    string = data
    string.split(' ').each{|i| @list.append(i)}
  end

  def count
    @list.count
  end
end
