class Question
    attr_accessor :question
    attr_accessor :answer
    attr_accessor :num1
    attr_accessor :num2
    attr_accessor :player


    def initialize (number_1, number_2, playername)
      @player=playername.to_s
      @question = self.player + ": What does " + number_1.to_s + " + " + number_2.to_s  + " equal?" 
      @num1=number_1
      @num2=number_2
   end




   def answer 
    @answer =(self.num1 + self.num2).to_s
end



end
# q1=Question.new(1,2)
# puts q1
# puts q1.question
# puts q1.n1
# puts q1.n2
# puts q1.answer