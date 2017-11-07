module MathGame
  class Question
    def initialize
      @first_number = rand(1..20)
      @second_number = rand(1..20)
    end
    def text
      ": What does #{@first_number} plus #{@second_number} equal?"
    end
    def answer
      @first_number + @second_number
    end
  end
end
