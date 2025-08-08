def word_wrap(word, counter)
  return word if counter==0
  if(word.length>counter && word.split(" ").count ==1)
     return word.chars.each_slice(counter).map(&:join).join("\n")
  end

  word.split(" ").join("\n")
end
