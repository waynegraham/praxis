class Name
  def initialize(first, last)
    @first = first
    @last = last
  end
  
  def to_s
    return @last + ", " + @first
  end
end

alex = Name.new('Alex', 'Gil')

puts alex
