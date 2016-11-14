def substrings(text, dictionary)
  query_result = {}
  text = text.split

  text.each do |word|
    dictionary.each do |substring|
      if word.include? substring
        query_result[substring] = 0
        query_result[substring] += 1
      end
    end
  end

  return query_result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)