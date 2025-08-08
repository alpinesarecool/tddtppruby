def word_wrap(word, counter)
  return word if counter==0
  
  word.split(" ").join("\n")
end