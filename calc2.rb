loop do
  begin
    print "最初の数字を入力してください: "
    input = gets.chomp
    break if input == "q"
    a = Integer(input)
    print "演算子を入力してください (+, -, *, /): "
    symbol = gets.to_s.chomp
    print "次の数字を入力してください: "
    b = Integer(gets)
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
  print "終了するには 'q' を入力してください: "
  break if gets.to_s.chomp == "q"
  end
  rescue ArgumentError => e
    puts "エラーが発生しました: #{e.message}"
end
puts "終了します"