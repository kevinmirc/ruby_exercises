#Happy Birthday! Ask what year a person was born in, then the month, then the day. Figure out how old they are and give them a big SPANK! for each birthday they have had.
def find_birthdate
  month = gets.chomp.to_i
  day = gets.chomp.to_i
  year = gets.chomp.to_i
  @birthday = Time.mktime(year, month, day)
end

find_birthdate
puts "Birthday: " + @birthday.to_s

def find_age
  ageInSec = Time.now - @birthday
  ageInHours = ageInSec/(60*60)
  @age = ageInHours/8765.81
end

find_age
puts "Real Age: " + @age.to_s
puts "Age: " + @age.round.to_s

def spank
  puts "Spank!" * @age.round
end

spank