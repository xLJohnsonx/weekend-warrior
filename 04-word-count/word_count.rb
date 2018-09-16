
# word count
# split string of words into an array of words by ' '
# create hash with default value of 0 to avoid undefined method + for nil
# e.g. hash.new => nil is default value
# iterate over each word
# create new k,v pair unless word already exists as key
# in which case increment the v by 1
def words(words)
  words = words.split(' ')
  word_hsh = Hash.new(0)
  words.each do |word|
    word_hsh[word] += 1
  end

  return word_hsh
end

# def words(words)
#   words = words.split(' ')
#   word_hsh = words.each_with_object({}) do |word, hash|
#     hash[word] += 1
#   end
#   return word_hsh
# end