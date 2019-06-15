class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    string = data
    string.split(' ').each{|data| @list.append(data)}
  end

  def count
    @list.count
  end

  def play
    `say -r 250 "#{@list.to_string}"`
  end
end
