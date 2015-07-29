class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @oranges = 0
  end

  def stats
    puts "Age: " + @age.to_s + ", Height: " + @height.to_s + " ft. " + "Oranges: " + @oranges.to_s
  end

  def pickOranges amount
    amount = amount.to_i
    if @oranges == 0
      amount = 0
    end
    while amount > 0
      @oranges -= 1
      amount -= 1
    end
    puts "The tree has " + @oranges.to_s + " oranges left to pick."
  end

  def orangesLeft
    puts "The tree has " + @oranges.to_s + " oranges on it."
  end

  def simYears years
    years = years.to_i
    years.times do 
      dropOranges
      oneYearPasses
    end
  end

  private

  def dropOranges #if an orange isn't picked that year it falls off
    @oranges = 0
  end

  def oneYearPasses
    @age += 1

    if @age < 5
      @oranges += 0
      @height += 4
    end

    if @age >=5 #tree's growth slows down here
      @oranges += 5
      @height += 2
    end

    if @age > 15
      @oranges += 10
      @height += 0 #tree stops growing once matured
    end

    #death
    if @age >= 20
      puts "The tree died at " + @age.to_s + " years old at the height of " + @height.to_s + "ft."
      exit
    end
    
    stats
  end
end

tree = OrangeTree.new
tree.stats
tree.stats
tree.pickOranges 3
tree.simYears 12
tree.pickOranges 2
tree.stats
tree.simYears 5
tree.pickOranges 4
tree.simYears 4






















