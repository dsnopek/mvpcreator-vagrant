
import "modules.pp"

# Some Aegir overrides:
#$aegir_hostmaster_url = 'panel.mvpcreator.dev'
#$aegir_email = 'aegir@example.com'
#$aegir_force_login_link = true

#Exec {
#  path => '/usr/bin:/bin',
#}

#include aegir
#include aegir::queue_runner

include mvpcreator
include mvpcreator::aptrepo
include mvpcreator::aptrepo::devtools

class {'mvpcreator::webserver':
  aegir_url => 'panel.mvpcreator.dev',
  aegir_email => 'aegir@example.com',
}

class {'mvpcreator::aegir_ftp':
  # TODO: we should generate and store this somewhere
  nss_mysql_password => 'Password123',
  # TODO: we should be able to determin this automatically...
  aegir_db_name => 'panelmvpcreatord',
}

