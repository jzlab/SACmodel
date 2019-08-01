#pid = fork { exec('run_SingleSACExperiment.sh') }
FILE_LIST= ['run1.sh', 'run2.sh']

def execute_files(file_list)
    pid_list=[]
    exec ("mkdir -p ./log")
    file_list.each do |file_name|
	puts "Running: #{file_name}"
	system("sh #{file_name} > #{file_name}.log")
    end
end

puts "Running files: \n#{FILE_LIST}"

execute_files(FILE_LIST)

puts "pids: #{pid_list}"

#irb  -r

#files = ['run1.sh', 'run2.sh']
#files #will just return it
#FILE_LIST #global definitition

#write the printouts to a log file

#how are my my pids doing $ ps -ef |grep 1234|

