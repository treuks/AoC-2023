forsen = File.read("input.txt")

# This will make it error out on the last endline, i just ended up removing the endline from the input lol
input = forsen.split("\n").map { |asd| asd.split(//).select(&.to_i?) }
puts input
fdm = input.map { |xdx| xdx.first(1)[0] }
asd = input.map { |xdx| xdx.last(1)[0] }

monkas = fdm.zip(asd).map { |a, b| a + b }.map { |x| x.to_i }.accumulate { |a, b| a + b }.last(1)[0]

puts "\n"
puts monkas
