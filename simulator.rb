require_relative ('field')


class Simulator

  @@fields = []

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

  def call_option(option)
    case option
    when "field" then new_field
    when "harvest" then harvest
    when "status" then status
    when "relax" then relax
    when "exit" then exit
    end
  end

  def new_field

  end

  # harvest method should iterate through all fields in the @@fields
  # array and get the harvest from the harvest method in the Field class
  def harvest

  end

  def status

  end

  def relax

  end

end

game = Simulator.new

game.main_menu
