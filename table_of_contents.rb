titles = ["Numbers", "Letters", "Variables", "Loops", "Flow"]
pages = [1, 27, 118, 200, 287]

linewidth = 40
currentchapter = 1
currentpage = 0

titles.each do |title|
  puts "Chapter: " + currentchapter.to_s +  " " + title.center(linewidth) + pages[currentpage].to_s
  currentchapter += 1
  currentpage += 1
end