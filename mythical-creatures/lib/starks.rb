class Stark
  attr_reader :name, :location, :house_words

  def initialize(name, home = "Winterfell")
    @name = name
    @location = home
    @safe = false
    @house_words = 'Winter is Coming'
  end

  def safe?
    @safe
  end

  def make_safe
    @safe = true
  end

  def not_protected
    @safe = false
  end
end
