def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(sum)
  # code #display_card_total here
  puts "Your cards add up to #{sum}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(sum)
  # code #end_game here
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(sum)
  # code hit? here
  prompt_user
  if get_user_input == "h"
    sum += deal_card
  end
  sum
end

def invalid_command
  # code invalid_command here
  puts "Sorry, invalid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  total = 0
  until total > 21
    welcome
    total += initial_round
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
