node default {

 class { 'apache':
   default_vhost => false,
 }

  apache::vhost { 'bookbinge.ec2.internal':
    port    => '80',
    docroot => '/var/www/html/bookapp',
    docroot_owner => 'www-data',
    docroot_group => 'www-data',
  }

}
