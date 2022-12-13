def encode(plaintext, key)

    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    p ('a'...'z').to_a
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    p = ('a'...'z').to_a
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[65 - char.ord]
    end
    return plaintext_chars.join
  end

  encode("theswiftfoxjumpedoverthelazydog", "secretkey")