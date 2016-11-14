def substrings(word, dictionary)
  query_result = {}

  dictionary.each do |substring|
    if word.include? substring
      query_result[substring] = 0
      query_result[substring] += 1
    end
  end

  return query_result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
# substrings("Howdy partner, sit down! How's it going?", dictionary)