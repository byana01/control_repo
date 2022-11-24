class profile::db{
include java

tomcat::install { '/apps/tomcat':
  source_url => 'https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.84/bin/apache-tomcat-8.5.84.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/apps/tomcat',
  catalina_base => '/apps/tomcat',
}

tomcat::config::server { 'default':
  catalina_base => '/apps/tomcat',
  port          => '8006',
}
}
