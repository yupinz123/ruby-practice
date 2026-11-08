tasks = [{ title: "牛乳を買う", done: false }, { title: "レポートを書く", done: true }, { title: "バイトのシフト確認", done: false }]

def done_mark(task)
  task[:done] ? '[x]' : '[ ]'
end

def show_tasks(tasks)
  tasks.each_with_index do |task, index|
    puts " #{index + 1}. #{done_mark(task)} #{task[:title]}"
  end
end

def add_task(tasks)
  print "タスク名: "
  title = gets.chomp
  tasks << { title: title, done: false }
  puts "タスクを追加しました。"
end

def mark_task_done(tasks)
  show_tasks(tasks)
  print "完了したタスク番号: "
  index = Integer(gets) -1
  if index >= 0 && index < tasks.size
    tasks[index][:done] = true
    puts "タスクを完了にしました。"
  else
    puts "無効なタスク番号です。"
  end
end

loop do
    begin
        print "1: 一覧  2: 追加  3: 完了  q: 終了:"
        input = gets.chomp
        break if input == "q"
        if input == "1"
          show_tasks(tasks)
        elsif input == "2"
          add_task(tasks)
        elsif input == "3"
          mark_task_done(tasks)
        else
          puts "無効な入力です"
        end
    puts "終了します。" if input == "q"
    rescue => e
      puts "エラーが発生しました: #{e.message}"
    end
end
puts "終了します"
