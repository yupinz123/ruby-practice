a = gets.to_i
symbol = gets.to_s.chomp
b = gets.to_i

if symbol == "+"
  puts a + b
elsif symbol == "-"
  puts a - b
elsif symbol == "*"
  puts a * b
elsif symbol == "/"
  puts a.to_f / b
else
  puts "無効な演算子"
end