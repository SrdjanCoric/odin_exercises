def substring(word, dictionary)
  result = Hash.new(0)
  dictionary.each do |substring|
    if word.include?(substring)
        result[substring] += 1 
    end
  end
  return result 
end

puts substring("below", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
