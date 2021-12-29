class Wizard
  attr_reader :name, :bearded, :spell_counter

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @spell_counter = 0
  end

  def bearded?
    @bearded
  end

  def incantation(words)
    words = "sudo #{words}"
  end

  def rested?
    if @spell_counter < 3
      @rested = true
    else
      @rested = false
    end
  end

  def cast
    @spell_counter += 1
    'MAGIC MISSLE!'
  end
end
