# Write an #encrypt method that takes a text parameter (string) and makes a 3-letter left shift in the alphabet:

def encrypt(string)
  # returns a string
  # create hash of secret_code. key: alphabet ; value: alphabet - 3
  # transform string into array of letters, store in variable letters
  # if key in secret_code exists, substitute. Else, keep it as it s
  # join the letters array together
  secret_code = ('A'..'Z').to_h { |s| [s,
    if s == 'A'
      'X'
    elsif s == 'B'
      'Y'
    elsif s == 'C'
      'Z'
    else
      (s.ord - 3).chr
    end
      ]}

  letters = string.chars
  encrypted = letters.map do |letter|
    if secret_code.key? (letter)
      secret_code[letter]
    else
      letter
    end
  end
  encrypted.join
end



puts encrypt("HELLO HELLO")
