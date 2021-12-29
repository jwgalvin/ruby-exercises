class Dragon

  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @eaten_counter = 0
  end

  def hungry?
    @eaten_counter < 3 ? true : false
  end

  def eat
    @eaten_counter += 1
  end
end
