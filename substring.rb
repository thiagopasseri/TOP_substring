dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

# First solution (with .each)

# def substrings(phrase,dict)
#   hash_listing = {}
#   dict.each do |word|
#     pattern = Regexp.new("#{word}")
#     # p pattern
#     count = phrase.scan(pattern).length
#     # puts "phrase: #{phrase} - word: #{word} - pattern:#{pattern.to_s} - count:#{count}"
#     if count >= 1
#       hash_listing[word] = count
#     end
#   end
#   hash_listing
# end

# Better solution with .reduce
def substrings(phrase,dict)
  dict.reduce(Hash.new()) do |sum, it|
    pattern = Regexp.new("#{it}", "i")
    count = phrase.scan(pattern).length
    sum[it] = count if count != 0
    sum
  end
end


# p substrings("below", dictionary)
# p substrings("how is howard howdy doing?", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)