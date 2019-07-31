#pid = fork { exec('run_SingleSACExperiment.sh') }
FILE_LIST= ['run1.sh', 'run2.sh']

def execute_files(file_list)
    pid_list=[]
    file_list.each do |file_name|
        exec ("mkdir -p ./log")
        pid = fork{ exec( "sh #{file_name}") }
        pid_list.push(pid)
    end
    pid_list
end

puts "Running files: \n#{FILE_LIST}"

pids = execute_files(FILE_LIST)

puts "pids: #{pid_list}"

#irb  -r

#files = ['run1.sh', 'run2.sh']
#files #will just return it
#FILE_LIST #global definitition

#write the printouts to a log file

#how are my my pids doing $ ps -ef |grep 1234|

