def game
  num = rand 25
  puts "Guess a number between 0 and 24"

  loop do
    user_answer = gets.chomp.to_i

    if user_answer == num
      puts "Yay, you got it right!"
      break
    elsif user_answer > num
      puts "You guessed too high, try guessing lower - please guess again!"
    elsif user_answer < num
      puts "You guessed too low, try guessing high - please guess again!"
    end
  end
end

game
