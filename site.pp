node "puppet-centos-client.local" {

tomcat::tomcat_application { "my-second-application":
    application_root => "/opt",
    tomcat_user => "webuser",
    tomcat_port => "8090",
    jvm_envs => "-Dmy.java.opt=i_love_scala -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Djava.rmi.server.hostname=some.ip.address"
  }
}
