### Command to check list of items on target/remote machine
ansible -i inventory all -a "ls" 
ansible -i inventory webservers -a "ls"

### check for the list of items and hidden files on the target machines
ansible -i inventory all -a "ls -lart"

### Creating a directory called cloud on all machines
ansible -i inventory all -a "mkdir secret-files"

### Removing a directory on all machine
ansible -i inventory all -a "rm -r -f secret-files"
ansible -i inventory all -a "rm -r -f cloud"

### to create a file text.txt on all machines
ansible -i inventory all -a "touch cloud/text.txt"

### first create a file touch /tmp/my-file.txt on the control server and push it to all #machines


### Command to create file in tmp directory
touch /tmp/my-file.txt
touch /tmp/my-2file.txt

### Command to copy files from ansible controllers to target machines
ansible -i inventory webservers -m copy -a "src=/tmp/my-file.txt dest=/tmp/my-file.txt"

### command to move ansible file from ansible controller to remote servers
flag>>ansible -i inventory webservers -m move -a "src=/tmp/my-2file.txt dest=/tmp/my-2file.txt"

### To copy a file to all Host in an Inventory file
ansible -i inventory -m copy -a 'src=/local/path/to/file dest=/remote/path/to/file mode=0644'

### Command to check the status of a specific service on single hosts or server1
flag>>ansible -i inventory webservers -m service -a 'name=apache2 state=started'
flag>>ansible -i inventory webservers -m service -a 'name=apache2 state=present'
flag>>ansible -i inventory webservers -m service -a 'name=apache2 state=reloaded'

### Command to find ids on host machines
ansible -i inventory webservers -m shell -a 'id'

### ansible adhoc command to check the free memory or memory usage of hosts
ansible -i inventory all -a "free -m"


### To check the disk/memory space on all hosts in an inventory file
ansible -i inventory all -m shell -a 'df -h'