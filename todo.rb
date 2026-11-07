tasks = [{ title: "牛乳を買う", done: false }, { title: "レポートを書く", done: true }, { title: "バイトのシフト確認", done: false }]


loop do
    begin
        print "1: 一覧  2: 追加  q: 終了:"
        input = gets.chomp
        break if input == "q"
        if input == "1"
          tasks.each_with_index do |task, index|
            puts " #{index + 1}. #{task[:done] ? '[x]' : '[ ]'} #{task[:title]}"
          end
        elsif input == "2"
          print "タスク名: "
          title = gets.chomp
          tasks << { title: title, done: false }
          puts "タスクを追加しました。"
        else
          puts "無効な入力です"
        end
    puts "終了します。" if input == "q"
    rescue => e
      puts "エラーが発生しました: #{e.message}"
    end
end
puts "終了します"
