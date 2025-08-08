def word_wrap_bob_impasse(text, counter)
  return "" if text.nil?
  text.sub(" ","\n")
end