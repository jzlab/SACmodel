#pid = fork { exec('run_SingleSACExperiment.sh') }
FILE_LIST= ['run1.sh', 'run2.sh']
def execute_files(file_list)
    pid_list=[]
    file_list.each do |file_name|
        exec ("mkdir -p ./log")
	fork do
		exec( "sh #{file_name}")
	end
    end
    Process.waitall
end

#irb  -r

#files = ['run1.sh', 'run2.sh']
#files #will just return it
#FILE_LIST #global definitition

#write the printouts to a log file

#how are my my pids doing $ ps -ef |grep 1234|

