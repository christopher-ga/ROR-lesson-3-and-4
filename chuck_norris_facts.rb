require 'faker'

def chuck_norris_facts
  loop do
    puts "Do you want to know a fact about Chuck Norris? y/n"
    answer = gets.chomp.downcase
    if answer == 'y'
      puts Faker::ChuckNorris.fact
    elsif answer == 'n'
      puts "Goodbye!"
      break
    else
      puts "Please answer 'yes' or 'no'."
    end
  end
end

chuck_norris_facts