require_relative 'player'
require_relative 'room'

class Dungeon
  attr_accessor :player

  def initialize(player_name)
    @player = Player.new(player_name)
    @room=[]
  end

  #Player=Struct.new(:name, :location)
  #Room=Struct.new(:reference, :name, :description, :connections)

  def add_room(reference, name, description, connections)
    @room << Room.new(reference, name, description, connections)
  end

  def find_room_in_dungeon(reference)
    @room.detect{|room| room.reference==reference}
  end

  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end

  def start(location)
    @player.location=location
    show_current_description
  end

  def find_room_in_direction(direction)
    find_room_in_dungeon(@player.location).connections[direction]
  end

  def go(direction)
    puts "You go "+direction.to_s
    @player.location=find_room_in_direction(direction)
    show_current_description
  end

end

FUNCTION=0

ATTR=1

#Create the main dungeon object
my_dungeon=Dungeon.new("Sekvoja")

#Add room to the dungeon
my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave", {:west=>:smallcave})
my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophobic cave",{:east=>:largecave})

#Start the dungeon by placing the player in the large cave
my_dungeon.start(:largecave)
#my_dungeon.go(:west)

begin
  print "What is your next move? "
  $action=gets.chomp.split(" ")

   case($action[FUNCTION])
     when "go"
       begin
       my_dungeon.go($action[ATTR].downcase.to_sym)
       rescue
        puts "There is no way over there! You came back to your last place!"
       end
     when "status"
       my_dungeon.show_current_description
   end

end while not $action[FUNCTION]=="exit"

puts "Have a nice day, you, coward!"