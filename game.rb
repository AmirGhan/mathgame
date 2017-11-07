require './player'
require './question'
require './turn'

module MathGame
  class Game
    def initialize
      @player1 = Player.new("Player 1")
      @player2 = Player.new("Player 2")
      @current_player = @player1
    end

    def start
      turn = Turn.new

      while @player1.life > 0 && @player2.life > 0
        question = Question.new
        puts "-------- NEW TURN --------"
        puts "#{turn.player}#{question.text}"
        print "> "
        input = gets.chomp.to_i

        if input != question.answer
          puts "#{turn.player}: Seriously? No!"
          @current_player.life -= 1

        else
          puts "#{turn.player}: YES! You are correct."
        end
        puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"

        case turn.player
        when "Player 1"
          turn.player = "Player 2"
          @current_player = @player2
        when "Player 2"
          turn.player = "Player 1"
          @current_player = @player1
        end
      end
      if @player1.life > 0
        winner = @player1
      else
        winner = @player2
      end
      puts "-------- GAME OVER --------"
      puts "#{winner.name} wins with a score of #{winner.life}/3"

    end
  end
end
