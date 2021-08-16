require './app'
class Game
    attr_reader :action

    def result(choice)
      action = ["Rock","Paper","Scissors"].sample
      if choice == action
        puts "Draw!"
      elsif choice == "Rock" && action == "Scissors" 
        puts "WON!"
      elsif choice == "Paper" && action == "Rock"
        puts "WON!"
      elsif choice == "Scissor" && action == "Paper"
        puts "WON!"
      elsif choice == "Scissors" && action == "Rock"
        puts "LOST!"
      elsif choice == "Rock" && action == "Paper"
        puts "LOST!"
      elsif choice == "Paper" && action == "Scissors"
        puts "LOST!"
      end
    end
end