node default {
  file {'/root/test/NEWFILE':
    ensure => file,
    content => 'This is a readme file',
    owner => 'root',
  }
}
