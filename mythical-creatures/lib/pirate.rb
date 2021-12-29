class Pirate

  attr_reader :name, :job, :cursed, :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @cursed = false
    @heinous_act = 0
    @booty = 0
  end

  def commit_heinous_act
    @heinous_act += 1
  end

  def cursed?
    return true if @heinous_act > 2
    false
  end

  def rob_ships
    @booty += 100
  end
end
