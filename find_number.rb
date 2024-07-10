is_session_active = true
is_game_active = true

while is_session_active
  num_to_guess = rand(1..100)

  while is_game_active

    puts "Guess a number between 1 and 100"
    guess = gets.chomp

    until guess.to_i >= 1 && guess.to_i <= 100
      puts "Invalid guess. Please guess a number between 1 and 100"
      guess = gets.chomp
    end

    guess = guess.to_i
    if guess == num_to_guess
      puts "Correct guess!"
      is_game_active = false
    elsif guess > num_to_guess
      puts "Guess too high!"
    else
      puts "Guess too low!"
    end

  end

  puts "Play again? y/n"
  play_again = gets.chomp

  if play_again == "n"
    is_session_active = false
  elsif play_again != "y"
    puts "Invalid response. Play again? y/n"
  end

end

