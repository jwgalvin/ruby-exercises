class Werewolf
  attr_reader :name, :location, :hungry

  def initialize(name, location = 'earth')
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    if @human == true
    @human = false
    @wolf = true
    @hungry = true
  elsif @human == false
    @human = true
    @wold = false
    end
  end

  def consume(morsel)
    if @wolf == true
      morsel.status = :dead
      hungry = false
    elsif @wolf == false
      puts "People don't eat people!"
    end
  end

end
