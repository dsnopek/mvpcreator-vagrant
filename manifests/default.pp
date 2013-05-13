
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

class {'mvpcreator::webserver':
  aegir_url => 'panel.mvpcreator.dev',
  aegir_email => 'aegir@example.com',
}

