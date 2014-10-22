class Room
  attr_accessor :reference, :name, :description, :connections

  def initialize(reference, name, description, connections)
    @reference=reference
    @name=name
    @description=description
    @connections=connections
  end

  def full_description
    @name+"\nYou are in " +@description
  end


end