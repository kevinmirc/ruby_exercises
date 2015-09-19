class MyCar
  attr_accessor :color, :speed
  attr_reader :year, :model
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def increase_speed(number)
    self.speed = number
    puts "You've increased your speed to #{@speed} mph."
  end

  def brake(number)
    self.speed -= number
    puts "You're now going #{@speed} mph"
  end

  def current_speed
    puts "You're traveling #{@speed} mph"
  end

  def shut_off_car
    self.speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(new_color)
    self.color = new_color.downcase
    puts "Your new #{color} paint job looks great!"
  end

  def what_kind_of_car
    puts "This car is a #{self.color} #{self.year} #{self.model}"
  end
end

stan = MyCar.new(2004, "Grey", "Ford")

stan.what_kind_of_car

stan.spray_paint("Red") #using the method I created
puts stan.color #using the hidden method that comes with attr_accessor to read it

stan.current_speed
stan.increase_speed(60)
stan.brake(10)
stan.shut_off_car