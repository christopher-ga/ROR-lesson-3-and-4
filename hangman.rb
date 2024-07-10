def hangman(word, guess_array)
  result = word.split('').map do |el|
    guess_array.include?(el) ? el : "_"
  end

  print result.join
end

hangman('bitch', ['i'])


