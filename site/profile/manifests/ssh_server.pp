class profile::ssh_Server {
      package { 'openssh-server':
              ensure => present,
      }
      service { 'sshd':
              ensure => 'running',
              enable => 'true',
      }
      ssh_authorized_key { 'root@master.puppet.vm':
            ensure => present,
            user => 'root',
            type => 'ssh-rsa',
            key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8N6lnS7tiqM+aa2+vyqm/j0FjYxSPAYMSQekr7sTNBuPRwP+THlktR8vVHtKULWcZP1nv5ko+fYVkehHsHdwuXKsf7A4mcvAP7PUN8g9FQQZOkcnlMD7n3PHYmS4ZtJbg4fWI2TUyQ1ujQCGRFMsGti80XMPOV9yVysXFk2gn4HE0DDn+G/kH2BNRgagl0Bqq6UJOvgQ3z711rKzaYSa5w1vK0mM8c2p+6+BBgdp
gIbcB5hPNrXXEQ0/Y2T+MnWuQZQ4JuvgcS3HRqgH8wuUkHjD9qxmGCkthPdhgYV8CHZUgTG6Co91XIRhT8pQ/0LXYIL2SXV/9QlBehRdCzAK9',
      }
}
