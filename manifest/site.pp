node default {
  file {'/root/NEWFILE':
    ensure => file,
    content => 'This is a readme file',
  }
}
