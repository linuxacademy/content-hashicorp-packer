apache:
  vhosts:
    bookbinge:
      location: bookbinge.conf
      servername: bookapp.ec2.internal
      serveralias: www.bookapp.ec2.internal
      errorlog: logs/bookapp.ec2.internal-error_log
      customlog: logs/bookapp.ec2.internal-access_log combined
      docroot: /var/www/html/bookbinge
