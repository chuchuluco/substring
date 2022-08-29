def substrings(string, dictionary) 
  result = Hash.new(0)
  revision_array = string.downcase.split(' ')
  dictionary.each do |word|
    count = string.downcase.scan(word).count 
    result[word] = count unless count == 0
  end
  result
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)