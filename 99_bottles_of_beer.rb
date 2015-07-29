#"99 bottles of beer on the wall..." Write a program which prints out the lyrics to that beloved classic, that field-trip favorite: "99 Bottles of Beer on the Wall."

bottles = 99

while bottles > 0
  puts bottles.to_s + " bottles of beer on the wall,"
  puts bottles.to_s + " bottles of beer!"
  puts "Take one down, pass it around."
  bottles -= 1
  puts bottles.to_s + " bottles of beer on the wall..."
end