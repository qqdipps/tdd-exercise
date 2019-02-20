# blackjack_score.rb

VALID_CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "King", "Queen", "Jack"]

def blackjack_score(hand)
  #facecards
  hand.map! do |card|
    card == "King" || card == "Queen" || card == "Jack" ? 10 : card
  end
  #sum
  score = hand.inject(:+)
  #ace
  if hand.include?(1) && score + 10 <= 21
    score += 10
  end
  score
end
