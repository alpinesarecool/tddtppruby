def word_wrap_bob_impasse(text, counter)
  raise if counter<1
  if text.nil? || text.empty?
    return ""
  else
    #went over the board missed to write the constant in the previous step
    # which gives us the opportunity to write one more spec to transform it expression->function by adding a statement->statements spec
    #"hello"+"\n"+"world"
    (text.slice(0...counter)+"\n"+word_wrap_bob_impasse(text.slice(counter..), counter)).chomp
  end
end