require_relative ('field')

class Simulator

  @@fields = []
  @@farm_harvest = 0

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
    puts "What kind of field? (corn or wheat)"
    type = gets.chomp.downcase
    puts "How large in hectares?"
    size = gets.to_i
    field = Field.new(type, size)
    @@fields << field
    puts "Added a #{type} field of #{size} hectares."
  end

  # harvest method should iterate through all fields in the @@fields
  # array and get the harvest from the harvest method in the Field class
  def harvest
    @@fields.each do |field|
      harvest = field.harvest
      puts "Harvesting #{harvest} food from #{field.size} hectare #{field.type} field"
      @@farm_harvest += harvest
    end
    puts "The farm has harvested #{@@farm_harvest} total food so far"
  end

  def status
    @@fields.each do |field|
      puts "#{field.type} field is #{field.size} hectares"
    end
    puts "The farm has #{@@farm_harvest} harvested food so far."
  end

  def relax
    @@fields.each do |field|
      if field.type == "corn"
        puts "#{field.size} hectares of beautiful green corn stalks rustling in the breeze."
      elsif field.type == "wheat"
        puts "Golden wheat shimmers in the sunshine over #{field.size} hectares of awesome."
      end
    end
  end

end

game = Simulator.new

game.main_menu
