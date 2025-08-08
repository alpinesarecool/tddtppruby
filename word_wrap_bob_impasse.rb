def word_wrap_bob_impasse(text, counter)
  raise if counter<1
  return "" if text.nil? || text.empty?
  if text.length<counter
     return text
  else
    space = text&.index(" ")
    if(space && space >=0)
      return "word"+"\n"+"word"
    else
      (text.slice(0...counter)+"\n"+word_wrap_bob_impasse(text.slice(counter..), counter)).chomp
    end
  end
end