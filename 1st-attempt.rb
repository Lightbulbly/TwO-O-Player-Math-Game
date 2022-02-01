class Player
    attr_accessor :name
    attr_accessor :lives

   def initialize(name)
     @name = name
     @lives = 3
   end

   def reduce_life
    @lives -= 1
  end

end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

number_1 = 5
number_2 = 3 

player1life=3
player2life=3

while player1life!=0 && player2life!=0 do 

puts player1.name + ": What does " + number_1.to_s + " + " + number_2.to_s  + " equal?" 

player_input = gets.chomp()

if player_input != number_1+number_2 
puts "Seriously? No!"
player1life=player1life-1
if player1life==0
    puts "P2 won with a score of " + player2life.to_s + "/3" 
    return
end
puts "P1: " + player1life.to_s+"/3 "+ " P2: "+ player2life.to_s+"/3"
end

puts player2.name + ": What does " + number_1.to_s + " + " + number_2.to_s  + " equal?" 
player_input = gets.chomp()
if player_input != number_1+number_2 
puts "Seriously? No!"
player2life=player2life-1
if player2life==0
    puts "P1 won with a score of " + player1life.to_s + "/3" 
    return
end
puts "P1: " + player2life.to_s+"/3 "+ " P2: "+ player2life.to_s+"/3"
end

end