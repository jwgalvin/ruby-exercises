class Centaur
  attr_reader :name, :breed, :drunk

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @activity = 0
    @drunk = false
  end

  def shoot
    cranky?
    if @cranky == false && @standing == true
      @activity += 1
      'Twang!!!'
    else
      "NO!"
    end
  end

  def run
    cranky?
    @cranky == false && @standing == true ?
      (@activity += 1
      'Clop clop clop clop!') : "NO!"

  end

  def cranky?
    @activity < 3 ? (@cranky = false) : (@cranky = true)
  end

  def standing?
    @standing
  end

  def sleep
    @standing == true ? 'NO!' : (@activity = 0)
  end

  def lay_down
    @standing = false
  end

  def laying?
    @standing == false ? true : false

  end

  def stand_up
    @standing = true
  end

  def drink_potion
    if @cranky == false
      @drunk = true
      @standing == true ? (@activity = 0) : "can't drink will laying down"
    end
  end
end
