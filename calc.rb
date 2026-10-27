print "最初の数字を入力してください: "
a = gets.to_i
print "演算子を入力してください (+, -, *, /): "
symbol = gets.to_s.chomp
print "次の数字を入力してください: "
b = gets.to_i
begin
  if symbol == "+"
    puts a + b
  elsif symbol == "-"
    puts a - b
  elsif symbol == "*"
    puts a * b
  elsif symbol == "/" && b == 0
    puts "ゼロで割ることはできません"
  elsif symbol == "/" && b != 0
    puts a.to_f / b
  else
    puts "無効な演算子"
  end
rescue a.is_a?(Integer) || b.is_a?(Integer)
  puts "エラーが発生しました: #{e.message}"
end