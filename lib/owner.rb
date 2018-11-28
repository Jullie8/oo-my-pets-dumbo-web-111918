require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all=[]

  # code goes here
  def initialize(species)
      @pets = {:fishes => [], :dogs => [], :cats => []}
      @name = name
      @species = species
      @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
  end
  
  def buy_fish(name)
    # binding.pry
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
      self.pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
  end

    def play_with_cats
      self.pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      self.pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets
      self.pets.each do |key,value|
        # binding.pry
        value.each do |el|
          el.mood = "nervous"
        end.clear
      end
    end

    def list_pets 
         "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
    end

end

# binding.pry 


  # jullie = Owner.new("jullie")
  # jullie.name = "jullie"
  # jullie.buy_dog("Rosie")
  # jullie.buy_cat("kitty")
  # jullie.buy_fish("beta")

# binding.pry