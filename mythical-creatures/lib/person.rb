class Person
  attr_reader :name, :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def get_stoned
    @stoned = true
  end

  def stoned?
    @stoned
  end

  def unstoned
    @stoned = false
  end
end
