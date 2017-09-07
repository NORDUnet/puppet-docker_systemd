# == Class: docker_systemd
#
# Configure Docker container services in systemd.

class docker_systemd {

    case $::os['family'] {
      'Debian': {
        exec { 'systemctl-daemon-reload':
          command     => '/bin/systemctl daemon-reload',
          refreshonly => true,
        }
      }
      'RedHat': {
        exec { 'systemctl-daemon-reload':
          command     => '/usr/bin/systemctl daemon-reload',
          refreshonly => true,
        }
      }
    }

}
