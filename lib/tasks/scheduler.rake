desc "tasks not to stop applications"
task :task10 => :environment do
    puts "Task10 done."
end
task :task40 => :environment do
    puts "Task40 done."
end
