def word_wrap(text, counter)
  return text if counter==0
  words = text.split(" ")
  result = ""
  
  words.each do |word|
    result += word.chars.each_slice(counter).map(&:join).join("\n")+"\n"
  end
  
  result.chomp
end
