# Keeps asking player to make a chioce until one of three choices is picked.
# Computer make its choice
# Compare the player's choice and computer's choice and display result accordingly
#   1) rock > sissors  2) sissors > paper  3) paper > rock
# Ask if the player wants to play again

CHOICES = { 'r' => 'Rock', 's' => 'Sissors', 'p' => 'Paper'}

def comparsion(user_choice, computer_choice)
  if (user_choice == 'r' and computer_choice == 's') || (user_choice == 's' and computer_choice == 'p') ||
    (user_choice == 'p' and computer_choice == 'r') 
    puts "You pick #{CHOICES[user_choice]}"
    puts "Computer picks #{CHOICES[computer_choice]}"
    display_winning_msg(user_choice)
    puts "You won!"
  else
    puts "You pick #{CHOICES[user_choice]}"
    puts "Computer picks #{CHOICES[computer_choice]}"
    display_winning_msg(computer_choice)
    puts "Computer won!"
  end
end

def display_winning_msg(winning_choice)
  case winning_choice
  when 'r'
    puts "Rock smashes Sissors"
  when 's'
    puts 'Sissors cuts Paper'
  when 'p'
    puts "Paper wraps Rock"
  end
end

loop do
  puts "Welcome to Rock - Sissors - Paper"
  # Keeps asking player to make a chioce until one of three choices is picked.
  begin
    puts "Make you pick please (p / s / r)"
    user_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(user_choice)

  # Computer make its choice
  computer_choice = CHOICES.keys.sample

  # Compare the player's choice and computer's choice and display result accordingly
  comparsion(user_choice, computer_choice)

  # Ask if the player wants to play again
  puts "Do you want to play again? (y/n)"
  choice = gets.chomp.downcase
  if choice != 'y' 
    puts "Goodbye!"
    break
  end
end

