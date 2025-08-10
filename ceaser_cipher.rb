def ceaser_cipher(message, key)
  return message if key==0 || message==""
  result=""
  message.chars.each do |char|
    if (char.ord+key)>122
      result +=(char.ord+key-26).chr
    else
      result +=(char.ord+key).chr
    end
  end
  result
end