class Park

  attr_reader :name, :description, :directions, :hours

  def initialize(attributes)
    @name = attributes[:name]
    @description = attributes[:description]
    @directions = attributes[:directionsInfo]
    @hours = attributes[:operatingHours].first[:standardHours]
  end
end
