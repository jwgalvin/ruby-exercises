class Direwolf
  attr_reader :name, :home, :size

  def initialize(name, home = 'Beyond the Wall', size = 'Massive')
    @name = name
    @home = home
    @size = size
    @protect = []
    @hunts_WW = true
  end

  def starks_to_protect
    until @protect.count <= 2
      @protect.pop
    end
      @protect
  end

  def protects(person)
    person.location == home ? (@protect << person) : 'unable'
    @protect.each do |person|
      person.make_safe
    end
    @protect.count != 0 ? (@hunts_WW = false) : "nothing"
    @protect
  end

  def hunts_white_walkers?
    @hunts_WW
  end

  def leaves(person)
    @protect.delete(person)
    person.not_protected
    person
  end
end
