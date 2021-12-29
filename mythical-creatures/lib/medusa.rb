class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.get_stoned
    @statues << victim
    if @statues.count > 3
      @statues.first.unstoned
      @statues.pop
    end
  end


end
