class sneezingdog-dns{
  include dns::server

  dns::zone { 'sneezingdog.lan':
    soa         => "ns1.sneezingdog.lan",
    soa_email   => "admin.sneezingdog.lan",
    nameservers => ["ns1"],
  }
  dns::zone { '56.234.10.IN-ADDR.ARPA':
  soa         => "ns1.example.com",
  soa_email   => 'admin.example.com',
  nameservers => ["ns1"]
}
  dns::record::a {
    'bender':
      zone => 'sneezingdog.lan',
      data => ['10.234.56.7'],
      ptr  => true;
    'farnsworth':
      zone => 'sneezingdog.lan',
      data => ['10.234.56.8'],
      ptr  => true;
  }
  






}
