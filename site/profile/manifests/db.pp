class profile::db{
include java

tomcat::install { '/root/tomcat':
  source_url => 'https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.84/bin/apache-tomcat-8.5.84.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/root/tomcat',
}
}
