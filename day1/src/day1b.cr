
# nope i definitely didnt steal this substitution thing from smarter people, nope 
filexd = File.read("input.txt")
  .gsub("one", "o1e")
  .gsub("two", "t2p")
  .gsub("three", "t3e")
  .gsub("four", "f4r")
  .gsub("five", "f5e")
  .gsub("six", "s6x")
  .gsub("seven", "s7n")
  .gsub("eight", "e8t")
  .gsub("nine", "n9e")

# This will make it error out on the last endline, i just ended up removing the endline from the input lol
input = filexd.split("\n").map { |asd| asd.split(//).select(&.to_i?) }
puts input
fdm = input.map { |xdx| xdx.first(1)[0] }
asd = input.map { |xdx| xdx.last(1)[0] }

monkas = fdm.zip(asd).map { |a, b| a + b }.map { |x| x.to_i }.accumulate { |a, b| a + b }.last(1)[0]

puts "\n"
puts monkas
