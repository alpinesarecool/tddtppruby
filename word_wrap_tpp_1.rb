def word_wrap_tpp_1(text, counter)
  raise if counter < 1
  return "" if text.empty?
  if(text.length<counter)
    text
  else
    space = text.index(" ")
    if(space && space>0)
      return text.slice(0...space)+"\n"+ word_wrap_tpp_1(text.slice(space+1..), counter)
    end
    text.slice(0...counter)+"\n"+ word_wrap_tpp_1(text.slice(counter..), counter)
  end
end 
