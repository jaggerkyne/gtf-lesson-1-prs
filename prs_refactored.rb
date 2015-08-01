# Task: Make a game of paper scissors rock.

# There are three possible choices for a pick: 1) paper 2) scissors 3) rock

# Comparsion Rule: rock > scissors, scissors > paper, paper > rock

# Steps:
# 1. Ask the player to pick a choice
# 2. Computer will pick a choice
# 3. Then compare them
# 4. Display the result
# 5. Ask if want to play again, if yes, repeat 1 - 4, if no, quit the program.

CHOICES = {"p" => "paper", "s" => "scissors", "r" => "rock"}

def say (msg)
  puts "=========>#{msg}========="
end

# Use case to determine the winning message.
def display_winning_msg(winning_msg)
  case winning_msg
  when "r"
    puts "Rock Smashes scissors"
  when "p"
    puts "Paper Wraps Rock"
  when "s"
    puts "Scissors cuts Paper"
  end
end

def display_final_result(player_choice, computer_choice)
  # Player winning conditions
  if (player_choice == "r" and computer_choice == "s") or 
    (player_choice == "s" and  computer_choice == "p") or 
    (player_choice == "p" and computer_choice == "r")
    puts "You pick #{CHOICES[player_choice]} and computer picks #{CHOICES[computer_choice]}."
    display_winning_msg(player_choice)
    puts "You won!"
  elsif player_choice == computer_choice
    puts "You pick #{CHOICES[player_choice]} and computer picks #{CHOICES[computer_choice]}."
    puts "This is a tie!"
  else
    puts "You pick #{CHOICES[player_choice]} and computer picks #{CHOICES[computer_choice]}."
    display_winning_msg(computer_choice)
    puts "Computer won!"
  end
end


def play_the_game()
  say "Welcome to Paper-scissors-Rock Game."
  loop do
    begin
      say "Make your pick: (p/s/r) please!"
      player_choice = gets.chomp
      computer_choice = CHOICES.keys.sample
    end until CHOICES.keys.include?(player_choice)
    display_final_result(player_choice,computer_choice)
    puts "Do you want to play again? (y/n)"
    if gets.chomp.downcase != 'y'
      puts "Goodbye!"
      break
    end
  end
end

play_the_game


