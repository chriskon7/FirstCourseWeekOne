=begin
Chris Koning's Blackjack Game!

Hints:
1. Think of the data structure required to keep track of cards in a deck. 
2. You'll need to look up and use a "while" loop, since there could be an indeterminate number of "hits" by both the player and dealer.
 "while" loops are used when we don't have a finite number of iterations.
3. Code something. Get started, even if it's just capturing the player's name. Give it an honest attempt before looking at solutions.
4. Use methods to extract the piece of functionality that calculates the total, since we need it throughout the program.

Bonus:
1. Save the player's name, and use it throughout the app.
2. Ask the player if he wants to play again, rather than just exiting.
3. Save not just the card value, but also the suit. 
4. Use multiple decks to prevent against card counting players.
=end

#Blackjack game
require 'pry'
#method to add up card totals
def calculate_total(cards)
  arr = cards.map { |x| x[1]}

  total = 0

  arr.each do |value|
    if value == "Ace"
      total += 11
    elsif value.to_i == 0
      total += 10
    else
      total += value.to_i
    end
  end

  #Figure out if Ace is worth 11 or 1
  arr.select { |x| x == "Ace"}.count.times do
    total -= 10 if total > 21
  end

  total
end



puts "Welcome to Chris Koning's Blackjack Game!"
puts "What is your name?"
player = gets.chomp
puts "Welcome, #{player}!"
puts "Let's play some Blackjack!"

#Loop to determine if player wants to play again or exit
play_again = "Y"
while play_again == "Y"
  puts "How about I deal us some cards???"
  puts ""

  suits = ["Heart", "Diamond", "Spade", "Club"]

  cards = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]

  deck = suits.product(cards)

  deck.shuffle!

  # Set players hands
  players_cards = []
  dealers_cards = []

  #Deal two cards to player and two to dealer by alternating

  players_cards.push(deck.pop)
  dealers_cards.push(deck.pop)
  players_cards.push(deck.pop)
  dealers_cards.push(deck.pop)

  #Calculate totals so far
  dealer_total = calculate_total(dealers_cards)
  player_total = calculate_total(players_cards)
  puts "Here are your cards, #{player}: #{players_cards[0]} and #{players_cards[1]} for a total of #{player_total}"
  puts "And here are my cards: #{dealers_cards[0]} and #{dealers_cards[1]} for a total of #{dealer_total}"
  puts ""

  #index variable to increment and tell player which card they got when choosing hit
  index_player = 2

  while player_total < 22
    puts "If you would like to hit type in 'Hit' and if you would like to stay type in 'Stay': "
    hit_or_stay = gets.chomp.capitalize
    if hit_or_stay == "Hit"
      players_cards.push(deck.pop)
      player_total = calculate_total(players_cards)
      puts "You got a #{players_cards[index_player]} which gives you a new total of: #{player_total}"
      index_player += 1
    elsif hit_or_stay == "Stay"
      break
    elsif player_total == 21
      puts "You hit 21!!!!"
    end
  end

  #index variable to increment and tell which card dealer got
  index_dealer = 2

  while dealer_total < 22 
      if player_total > 21
        puts "Game Over!"
        puts "BUST"
        break
      elsif (17..20) === dealer_total
        puts "I am going to stay"
        break
      elsif dealer_total < 17
        puts "I chose to hit!"
        dealers_cards.push(deck.pop)
        dealer_total = calculate_total(dealers_cards)
        puts "I got a #{dealers_cards[index_dealer]} which gives me a new total of: #{dealer_total}"
        index_dealer += 1
        if dealer_total == 21
          puts "I am going to stay"
          break
        elsif dealer_total > 21
          puts "I BUST!"
          break
        end
      else
        break
      end
    end

  #if/elsif statement to determine who won and display the score
  if player_total > 21 && dealer_total <= 21
    puts "Nice try! You lost this time!"
    puts "My final score was: #{dealer_total} and your final score was: #{player_total}" 
  elsif player_total <= 21 && dealer_total > 21
    puts "I can't believe I lost by busting!"
    puts "My final score was: #{dealer_total} and your final score was: #{player_total}"
  elsif player_total > dealer_total
    puts "You win!"
    puts "My final score was: #{dealer_total} and your final score was: #{player_total}"
  elsif player_total < dealer_total
    puts "I win!"
    puts "My final score was: #{dealer_total} and your final score was: #{player_total}"
  else
    puts "We tied!"
    puts "My final score was: #{dealer_total} and your final score was: #{player_total}"
  end

  puts "Would you like to play again? Y or N"
  play_again = gets.chomp.capitalize

  

end







