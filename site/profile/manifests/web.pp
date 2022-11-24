class profile::web {
  include nginx
  
  tomcat::install { '/opt/tomcat':
  source_url => 'https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.x/bin/apache-tomcat-8.0.x.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}
}
