node default {
  file {'/root/NEWFILE':
    ensure => present,
    content => 'This is a readme file',
  }
}
