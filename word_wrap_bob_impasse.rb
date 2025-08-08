def word_wrap_bob_impasse(text, counter)
  raise if counter<1
  if text.nil? || text.empty?
    return ""
  else
    text.slice(0...counter)+"\n"+text.slice(counter..)
  end
end