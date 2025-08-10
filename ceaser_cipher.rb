def ceaser_cipher(message, key)
  return message if key==0 || message==""

  message.chars.map do |char|
    shift_in_ascii = char.ord+key
    (shift_in_ascii)>122 ? (shift_in_ascii-26).chr : (shift_in_ascii).chr
  end.join
end