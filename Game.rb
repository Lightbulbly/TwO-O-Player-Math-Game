require_relative "Question.rb"
require_relative "Player.rb"

class Game
    attr_accessor :player1
    attr_accessor :player2

   def initialize (player1, player2)
    @player1 = player1
    @player2 = player2

   end

   def print_score 
    puts "P1: " + self.player1.lives.to_s+"/3 "+ " P2: "+ self.player2.lives.to_s+"/3"   
end

def check_score
    if self.player1.lives == 0
        puts "P2 wins with a score of " + self.player2.lives.to_s + "/3" 
        puts "----GAME OVER----"
        puts "----Good bye!----"
        return
    end

    if self.player2.lives == 0
        puts "P1 wins with a score of " + self.player1.lives.to_s + "/3" 
        puts "----GAME OVER----"
        puts "----Good bye!----"
        return
    end

end



   def start 

        while self.player1.lives!=0 && self.player2.lives!=0 do 

        current_question=Question.new(rand(10),rand(10),self.player1.name)
        puts current_question.question
        player_input = gets.chomp()
        
        if current_question.answer != player_input
        puts "Seriously? No!"
        self.player1.reduce_life
        end

        check_score
        print_score

        current_question=Question.new(rand(10),rand(10),self.player2.name) 
        puts current_question.question
        player_input = gets.chomp()

        if current_question.answer != player_input
        puts "Seriously? No!"
        self.player2.reduce_life
        print_score

        check_score

    end
    

        end
    end


end