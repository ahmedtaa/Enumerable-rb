module MyEnumerable
  def all?
    each { |n| return false unless yield n }
    true
  end

  def any?
    each { |n| return true if yield n }
    false
  end

  def filter
    even_array = []
    each { |n| even_array.push(n) if yield n }
    even_array
  end
end
