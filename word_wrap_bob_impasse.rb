def word_wrap_bob_impasse(text, counter)
  raise if counter<1
  return "" if text.nil? || text.empty?
  if text.length<counter
     return text
  else
    space =   text.slice(0..counter).rindex(" ");

    if(space && space >=0)
      break_between(text, space, space+1,counter)
    else
      break_between(text, counter, counter, counter).chomp
    end
  end
end

private

def break_between(text, head, tail, counter)
  return text.slice(0...head)+"\n"+word_wrap_bob_impasse(text.slice(tail..), counter)
end