#global vars
is_game_active = true
is_new_game = true
play_again = nil
lower_bound = 1
upper_bound = 100

while is_game_active

  if is_new_game
    puts "Enter a number between 1 and 100"
    random_num = gets.chomp
    lower_bound = 1
    upper_bound = 100
    play_again = nil

    until random_num.to_i >= 1 && random_num.to_i <= 100
      puts('Invalid input. Enter a number between 1 and 100!')
      random_num = gets.chomp
    end
    is_new_game = false
  end


  machine_guess = (upper_bound + lower_bound) / 2

  puts "My guess is #{machine_guess}. Is my guess correct, too high or too low? correct/too high/too low"

  response = gets.chomp
  until response == "correct" or response == "too low" or response == "too high" do
    response = gets.chomp
  end

  if response == "correct"
    puts "Yay! Thanks for not lying to me. Should we play again? y/n"
    play_again = gets.chomp
    until play_again == "y" or play_again == 'n' do
      puts "Invalid response. Play again? y or n"
      play_again = gets.chomp
    end
  elsif response == "too low"
    lower_bound = machine_guess + 1
  else
    upper_bound = machine_guess - 1
  end

  if lower_bound > upper_bound
    puts "Liar! The secret number is #{random_num} and I guessed all possible numbers. I'll give you another chance... Play again? y/n"
    play_again = gets.chomp
    until play_again == "y" or play_again == 'n' do
      puts "Invalid response. Play again? y or n"
      play_again = gets.chomp
    end
  end

  if play_again == 'n'
    is_game_active = false
  elsif play_again == 'y'
    is_new_game = true
  end

end
