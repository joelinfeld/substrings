def substrings(string, valid_substrings)
  string_matches = Hash.new(0)
  strings_to_compare = string.split
  strings_to_compare.each do |string|
    valid_substrings.each do |substring|
      if string.include? substring
        string_matches[substring] += 1
      end
    end
  end
  return string_matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)