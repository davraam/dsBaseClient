# Datashield for Azure Pipelines testing.
#
# Install mysql and mongodb, include test data but don't install the firewall.
# This is an example please change to meet the needs of your install. Consider changing any passwords in this file!
#

class { ::datashield:
  opal_password      => 'datashield_test&',
  opal_password_hash => '$shiro1$SHA-256$500000$gcnVxdEmOjaN+NfsK/1NsA==$UOobbhJsBBojnbsfzIBX9GTWjWQFi8aJZxFvFKmOiSE=',

  test_data      => true,         # Install the test data
  firewall       => false,        # Do not install the firewall
  mysql          => true,         # Install mysql server
  mongodb        => true,         # Install mongodb server
  remote_mongodb => false,        # There is not a remote mongodb server
  remote_mysql   => false,        # There is not a remote mysql server

  dsbase_githubusername      => 'StuartWheater',
  dsbase_ref                 => 'v6.2-dev_metadata',
  dsdanger_githubusername    => 'datashield',
  dsdanger_ref               => ''
}
