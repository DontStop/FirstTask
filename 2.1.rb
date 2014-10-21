str="few10rtergw20wefwew30\r\nergewg432\r\nerhwerth234"
array=(str).scan(/(\d+)\r?$/).flatten.map(&:to_i)

puts "#{array}"
puts str.length