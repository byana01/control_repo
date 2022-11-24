class profile::web {
  include nginx
  
  tomcat::install { '/opt/tomcat':
  source_url => 'https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.84/bin/apache-tomcat-8.5.84.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}
}

class { 'java' :
  package => 'java-1.8.0-openjdk-devel',
}
