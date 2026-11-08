tasks = [{ title: "牛乳を買う", done: false }, { title: "レポートを書く", done: true }, { title: "バイトのシフト確認", done: false }]

def delete_task(tasks)
    show_tasks(tasks)
    print "削除するタスク番号： "
    index = Integer(gets.chomp) - 1
    if index >= 0 && index < tasks.size
        tasks.delete_at(index)
        puts "タスクを削除しました"
    else
        puts "無効なタスク番号です"
    end
end

def done_mark(task)
    task[:done] ? '[x]' : '[ ]'
end

def show_tasks(tasks)
    tasks.each_with_index do |task, index|
        puts " #{index + 1}. #{done_mark(task)} #{task[:title]}"
    end
end

def add_task(tasks)
    print "追加するタスク： "
    title = gets.chomp
    tasks << { title: title, done: false }
    puts "タスクを追加しました"
end

def mark_task_done(tasks)
    show_tasks(tasks)
    print "完了したタスク名： "
    index = Integer(gets.chomp) - 1
    if index >= 0 && index < tasks.size
        tasks[index][:done] = true
        puts "タスクを完了にしました"
    else
        puts "無効なタスク番号です"
    end
end

loop do
    begin
        print "1: 一覧表示, 2: タスク追加, 3: タスク完了, 4: タスク削除, 5: 終了: "
        input = gets.chomp
        case input
        when "1"
            show_tasks(tasks)
        when "2"
            add_task(tasks)
        when "3"
            mark_task_done(tasks)
        when "4"
            delete_task(tasks)
        when "5"
            break
        end
    rescue => e
        puts "エラーが発生しました: #{e.message}"
    end
end
puts "終了しました"
