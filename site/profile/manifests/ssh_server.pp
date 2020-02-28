class profile::ssh_server {
        package {'openssh_server':
                ensure =>yes,
        }
        service {'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key {'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDMXtYvrkeipqnHBESu3L2vXfmSnjGev4VXx9fdLbST8IPS2Ano8MS/QXDcMKiZ8wyQ4N0xAZCnUGCkS/QFNeLIYmKZ6ZT61GEyQA7QSE7aq0XVOum1tOB5XTUvTdxUBJtHYOzIlevZzbFKAec+IbBwBSLBwYfy+AGCRvnZhBIdO2TLSJrGo1mEYVe2xqpyxXp9ICchTTE9XwFUdEFo/wGDs4Y8CseJdtwcQTuuYC3QLB+YYzWDq8FQfzFPsSmX47iQwfyf9sPU2TXLzX7Rr4mIgkdvLI5clF7N1SMzp4afEZV16A6iyJKErFhg7GE2kyEg4/MIckgoBmjeYLiRER4n', 
        }
}
