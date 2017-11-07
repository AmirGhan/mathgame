module MathGame
  class Player
    attr_accessor :life
    attr_reader :name
    def initialize (name)
      @life = 3
      @name = name
    end
  end
end
