$essential_tools = ['git', 'tmux', 'fish']

package {$essential_tools:
  ensure => installed
}

package {'youtube-dl':
  ensure => installed
}

$ss = 'shadowsocks-libev'

service {$ss:
  name => $ss,
  ensure => running,
  enable => true,
  subscribe => File['ss-conf'],
}

package {$ss:
  ensure => installed
}

$ip = $facts['networking']['ip']

file {'ss-conf':
  require => Package[$ss],
  ensure => file,
  path => '/etc/shadowsocks-libev/config.json',
  content => @("EOT":json)
  {
    "server":"${$ip}",
    "server_port":8388,
    "local_port":1080,
    "password":"FogouGoffContraregularityOmohyoidsc",
    "timeout":60,
    "method":"chacha20-ietf-poly1305"
  }
  | EOT
}
