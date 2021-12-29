class Human
  attr_reader :name, :encounter_counter


  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end

  def encounter
    @encounter_counter += 1
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      true
    else
      false
    end
  end

  def hit
    @knocked_out = true
  end

  def knocked_out?
    @knocked_out
  end

  def wake_up
    @knocked_out = false
  end
end
