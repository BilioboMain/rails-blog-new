# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

task :default do
  puts "Time now: #{Time.zone.now}"
end

desc 'Show time'

task current_time: :set_timezone do
  puts "Time now: #{Time.zone.now}"
end

desc 'Set time zone'

task set_timezone: :environment do
  ENV['TZ'] = 'UTC'
end

# namespace name:work_with_files do
#    task :create_directory do
#        mkdir_p('New_directory')
#
#
#        cd ('New_directory')
#        touch('Some_file')
#    end
# end

# task :manipulate_files do
#    mkdir 'new_dir_5'
#    #chmod 0777, 'lukasz'
#    #touch 'lukasz/wrobel.txt'
#    #rm_rf 'lukasz'
# end
#
# task :move_to_dir => :manipulate_files do
#    cd 'new_dir_5'
# end
#
# task :create_file ,[:arg1] => :move_to_dir do |t,args|
#    puts args[:arg1]
#    touch args[:arg1].to_s
# end
#

# Dirname = name of directory to create
task manipulate_files: :environment do
  mkdir ENV['DIRNAME'].to_s
  # chmod 0777, 'lukasz'nt
  # touch 'lukasz/wrobel.txt'
  # rm_rf 'lukasz'
end

task move_to_dir: :manipulate_files do
  cd ENV['DIRNAME'].to_s
end
# Name = name of file to create
task create_file: :move_to_dir do
  # puts ENV['NAME'].to_s
  touch ENV['NAME'].to_s
end

# task :write_to_file do
#    echo 'Hello World' > 'filename'
# end

task some_task: :environment do
  puts Post.last.inspect
end
