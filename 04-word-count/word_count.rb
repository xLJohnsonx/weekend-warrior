
# word count
def words(words)
  # split srting of words into an array
  words = words.split(' ')
  word_hsh = {}
  # iterate over each word
  words.each do |word|
     # create new k,v pair unless word already exists as key
     # in which case increment the v by 1
    if word_hsh.key? word
      word_hsh[word] += 1
    else
      word_hsh[word] = 1
    end
  end

  return word_hsh
end
