

class Dungeon
  attr_accessor :player

  def initialize(player_name)
    @player = Player.new(player_name)
    @room=[]
  end
end