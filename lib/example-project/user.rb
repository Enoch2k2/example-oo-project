class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name = name
  end

  def save
    @@all << self
  end

  def self.create(name)
    user = self.new(name)
    user.save
    user
  end

  def self.all
    @@all
  end
  
end