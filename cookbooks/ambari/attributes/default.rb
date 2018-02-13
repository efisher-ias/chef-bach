
# APT repository attributes
default['apt']['compile_time_update'] = 'true'

node.default['ambari']['ambari_server_version'] = '2.6.1.0'
node.default['ambari']['os']['ubuntu_version'] = 14

node.default['ambari']['ambari_ubuntu_repo_url'] = "http://public-repo-1.hortonworks.com/ambari/ubuntu#{node['ambari']['os']['ubuntu_version']}/2.x/updates/#{node['ambari']['ambari_server_version']}"

# Ambari properties
node.default['ambari']['ambari-server-startup-web-timeout'] = '150'
node.default['ambari']['ambari_server_host'] = 'servername.ambari.apache.org'
node.default['ambari']['ambari_server_conf_dir'] = '/etc/ambari-server/conf/'
node.default['ambari']['ambari_agent_conf_dir'] = '/etc/ambari-ag/ent/conf/'


# node.default['ambari']['java_home'] = "/usr/lib/jvm/java-#{node[:java][:jdk_version]}-#{node[:java][:install_flavor]}-amd64"
node.default['ambari']['java_home'] = "/usr/lib/jvm/java-8-oracle-amd64"

node.default['ambari']['use_local_repo'] = 'false'
node.default['ambari']['ambari_server_base_url'] = 'http://localhost:8080'
node.default['ambari']['ambari_views_url'] = "#{node['ambari']['ambari_server_base_url']}/api/v1/views"

node.default['ambari']['admin']['user'] = 'admin'
node.default['ambari']['admin']['password'] = 'admin'

node.default['ambari']['kerberos']['enabled'] = false
node.default['ambari']['kerberos']['principal'] = 'ambari@EXAMPLE.COM'
node.default['ambari']['kerberos']['keytab']['location'] = '/etc/security/keytabs/ambari.service.keytab'

#Ambari internal postgres database attributes
node.default['ambari']['pg_db_script_path'] = '/var/lib/ambari-server/resources/Ambari-DDL-Postgres-EMBEDDED-CREATE.sql'
node.default['ambari']['pg_schema_path'] = '/var/lib/ambari-server/resources/Ambari-DDL-Postgres-CREATE.sql'

# Ambari External Database attributes
node.default['ambari']['embeddeddbhost'] = 'localhost'
node.default['ambari']['db_type'] = 'embedded'
node.default['ambari']['databaseport'] = '3306'
node.default['ambari']['databasehost'] = ['localhost']
node.default['ambari']['databasename'] = 'ambari'
node.default['ambari']['databaseusername'] = 'ambari'
node.default['ambari']['databasepassword'] = 'bigdata'


# FILES view attributes
node.default['ambari']['webhdfs.client.failover.proxy.provider'] = 'org.apache.hadoop.hdfs.server.namenode.ha.ConfiguredFailoverProxyProvider'
node.default['ambari']['webhdfs.ha.namenode.http-address.nn1'] = 'namenode1:50070'
node.default['ambari']['webhdfs.ha.namenode.http-address.nn2'] = 'namenode2:50070'
node.default['ambari']['webhdfs.ha.namenode.https-address.nn1'] = 'namenode1:50470'
node.default['ambari']['webhdfs.ha.namenode.https-address.nn2'] = 'namenode2:50470'
node.default['ambari']['webhdfs.ha.namenode.rpc-address.nn1'] = 'namenode1:8020'
node.default['ambari']['webhdfs.ha.namenode.rpc-address.nn2'] = 'namenode2:8020'
node.default['ambari']['webhdfs.ha.namenodes.list'] = 'nn1,nn2'
node.default['ambari']['webhdfs.nameservices'] = 'hacluster'
node.default['ambari']['webhdfs.url'] = 'webhdfs://hacluster'
node.default['ambari']['webhdfs.auth'] = 'auth=SIMPLE'


# Ambari Views Attributes
node.default['ambari']['hive.host'] =  'u1203.ambari.apache.org'
node.default['ambari']['hive.http.path'] = 'cliservice'
node.default['ambari']['hive.http.port'] = '10001'
node.default['ambari']['hive.metastore.warehouse.dir'] = '/apps/hive/warehouse'
node.default['ambari']['hive.port'] = '10000'
node.default['ambari']['hive.transport.mode'] = 'binary'
node.default['ambari']['yarn.ats.url'] = 'http://u1202.ambari.apache.org:8188'
node.default['ambari']['yarn.resourcemanager.url'] = 'u1202.ambari.apache.org:8088'
node.default['ambari']['webhcat.hostname'] = 'u1203.ambari.apache.org'
node.default['ambari']['webhcat.port'] = '50111'
node.default['ambari']['oozie.service.uri'] = 'http://u1203.ambari.apache.org:11000/oozie'
node.default['ambari']['hadoop.security.authentication'] = 'simple'
node.default['ambari']['webhcat.hostname'] = 'u1203.ambari.apache.org'
node.default['ambari']['webhcat.port'] = '50111'
