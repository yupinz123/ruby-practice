loop do
  begin
    print "数字: "
    n = Integer(gets)
    puts n * 2
  rescue ArgumentError
    puts "数字じゃないよ"
  end
  print "やめる？(q): "
  break if gets.chomp == "q"
end
puts "おわり"
