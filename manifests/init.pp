class sneezingdog_dns{
  include dnsmasq

  dnsmasq::address{
    "10.234.56.7": names => ['bender.sneezingdog.lan'];
    "10.234.56.8": names => ['farnsworth.sneezingdog.lan'];
  }
}
