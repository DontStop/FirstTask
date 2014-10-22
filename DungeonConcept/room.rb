class Room
  attr_accessor :raference, :name, :description, :connections

  def initialize(reference, name, description, connections)
    @reference=reference
    @name=name
    @description=description
    @connection=connection
  end
end