class Simulator

  def initialize

  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.chomp
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts "--------------------------"
    puts "Options:"
    puts "field   -> adds a new field"
    puts "harvest -> harvests crops and adds to total harvested"
    puts "status  -> displays some information about the farm"
    puts "relax   -> provides lovely descriptions of your fields"
    puts "exit    -> exits the program"
  end

  def call_option

  end

end

game = Simulator.new

game.main_menu
