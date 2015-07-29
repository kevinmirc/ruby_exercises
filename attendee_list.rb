name = "Cat"
array1 = Array.new()

puts "This is where you can create your attendee list. Type in their name and press enter (type \"EXIT\" when your done)."

while name != "exit"
  name = gets.chomp.downcase
  array1.push(name)
end

array1.pop
number = 1

puts "Attendee List: "

array1.each do |name|
  puts number.to_s + ") " + name.capitalize
  number +=1
end

## 
# array1.each_with_index do |name, i|
#   puts "#{i}: #{name}"
# end

## 
# array1.each { |n| puts "#{n}" }