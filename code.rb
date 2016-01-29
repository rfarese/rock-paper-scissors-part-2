puts "hello"
puts "Let's play Rock, Paper, Scissors!"
wins = {:player=>0, :computer=>0}
r_p_s = {"rock"=>"r", "paper"=>"p", "scissors"=>"s"}
guess_beats = {"r"=>"s", "s"=>"p", "p"=>"r"}

while wins[:computer] < 2 && wins[:player] < 2
  puts "Guess 'r' (rock), 'p'(paper), or 's' (scissors)"
  player_guess = gets.downcase.chomp
  computer_guess = r_p_s.keys.sample
  puts "You guessed #{r_p_s.key(player_guess)} and the computer guessed #{computer_guess}"
  computer_guess_beats = guess_beats[r_p_s[computer_guess]]
  player_guess_beats = guess_beats[player_guess]

  if player_guess == r_p_s[computer_guess]
    puts "Tie!"
  elsif computer_guess_beats == player_guess
    puts "Computer wins this round!"
    wins[:computer] += 1
  elsif player_guess_beats == r_p_s[computer_guess]
    puts "Player wins this round!"
    wins[:player] += 1
  else
    puts "You can't guess #{player_guess}."
  end
  puts "The score is Player #{wins[:player]} and Computer #{wins[:computer]}"
end

puts "The #{wins.key(2)} wins the game!"
