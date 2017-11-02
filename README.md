This cookbook creates Hello World nginx site, swap, OS users with ssh keys and performs inspec tests.

Assume you have vagrant, chef, VirtualBox installed on your system

Run `kitchen test` to provision instance, converge, set runner plugins etc, run tests and destroy instance.

After `kithen create`, `kitchen converge` commands you can:

Test nginx page at `localhost:8080`

Test ssh connection with created users using  
`ssh mike@localhost -p 2222 -i .../templates/mike` command

Swap size can be verified after `kitchen login` command, using `free -m` or `swapon -s` 
