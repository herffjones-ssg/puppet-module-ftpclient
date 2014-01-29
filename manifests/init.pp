# == Class: ftpclient
#
# Sets FTP Passive mode as default.  Also ensures that FTPTool and Console FTP apps are installed.
#
class ftpclient {

  package { 'hj-ftptool':
    ensure => 'present',
  }

  package { 'ftp':
    ensure => 'present',
  }

  file { '/etc/profile.d/local.FTP_PASSIVE.sh':
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/ftpclient/local.FTP_PASSIVE.sh',
  }
}
