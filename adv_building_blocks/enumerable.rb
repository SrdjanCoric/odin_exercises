module Enumerable
  def my_each
    for i in self
      yield i
    end
  end

  def my_each_with_index
    for i in self 
      yield i, self.index(i)
    end
  end

  def my_select
    result = []
    self.my_each {|i| result << i if yield(i)}
  end

  def my_all? 
    result = true
    self.my_each {|i| result = false if !yield i}
    result 
  end  

  def my_any?
    result = false
    self.my_each {|i| result = true if yield i} 
    result
  end

  def my_none?
    result = true 
    self.my_each { |i| result = false if yield(i)}
    result
  end 

  def my_count(*n)
    count = 0
    if block_given?
      self.my_each { |i| count += 1 if yield(i)}
      count
    elsif
      self.my_each { |i| count += 1 if yield(i) == n}
    else
      self.my_each { |i| counter += 1}
    end 
  end

  def my_map(&proc)
    if block_given?
      map_array = []
      (self.length).times do |i|
        map_array.push(proc.call self[i])
      end
      map_array
    else
      self.to_enum
    end
end

  def my_inject(result=0)
    self.my_each {|i| result = yield result, i}
    result
  end

end

def multiply_els(array)
  array.my_inject(1) {|product, number| product*number}
end


integers = (1..5).to_a
abc = ('a'..'e').to_a
more_integers = integers + [2, 5]

p abc.my_all? {|letter| letter.is_a? String}
p integers.my_all? {|number| number%2==0} 
p abc.my_any? {|letter| letter.is_a? Integer}
p integers.my_any? {|number| number%2==0} 
p integers.count 
p more_integers.count(5)
p integers.count {|number| number%2==0}
p integers.my_map {|number| number*2} 
p integers.my_inject {|sum, number| sum+number}
p integers.my_inject(1) {|product, number| product*number}
p multiply_els([1,2,3])



