desc "tasks not to stop applications"
task :task10 => :environment do
    puts "Task10 done."
end
task :task30 => :environment do
    puts "Task30 done."
end
task :task50 => :environment do
    puts "Task50 done."
end
