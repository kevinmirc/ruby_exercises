# Leap Years. Write a program which will ask for a starting year and an ending year, 
# and then puts all of the leap years between them (and including them, 
# if they are also leap years). Leap years are years divisible by four (like 1984 and 2004). 
# However, years divisible by 100 are not leap years (such as 1800 and 1900) 
# unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years). 

puts "We're going to calculate how many leap years are between two years."
puts "Select the first year: "
  year1 = gets.chomp.to_i
puts "and the second: "
  year2 = gets.chomp.to_i

puts "Leap years between " + year1.to_s + " and " + year2.to_s + ":"

leapcount = 0
currentyear = year1

while currentyear != year2 + 1
  if currentyear.modulo(400).zero? && currentyear > 399 or currentyear.modulo(4).zero? # modulo finds the remainder and .zero? asks if that remainder is 0.
    leapcount += 1
    puts currentyear
  end
  currentyear += 1
end

if leapcount == 1
  puts "There is " + leapcount.to_s + " leap year between " + year1.to_s + " and " + year2.to_s + "."
else
  puts "There are " + leapcount.to_s + " leap years between " + year1.to_s + " and " + year2.to_s + "." # Need to watch pluralization here... "There are 1 leap years...?"
end

