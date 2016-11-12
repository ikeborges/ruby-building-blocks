def caesar_cypher(text, key)
  msg = text.split("")

  msg = msg.map do |char|
    if char =~ /[a-zA-Z]/
      curr_ord = char.ord
      new_ord = curr_ord + key

      if (char =~ /[A-Z]/ && new_ord > 90) || (char =~ /[a-z]/ && new_ord > 122)
        new_ord -= 26
      end

      char = new_ord.chr
    end
    char
  end
  msg.join
end

p caesar_cypher("What a string!", 5)