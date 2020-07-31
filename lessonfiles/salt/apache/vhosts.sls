disable_default_site:
  apache_site.disabled:
    - name: 000-default

{% for site, arg in salt['pillar.get']('apache:vhosts', {}).items() %}

{{ site }}_vhosts_dir:
  file.directory:
    - name: /var/www/html/{{ site }}
    - makedirs: True

{{ site }}_vhost_gen:
  apache.configfile:
    - name: /etc/apache2/sites-available/{{ site }}.conf
    - config:
      - VirtualHost:
          this: '*:80'
          ServerName:
            - {{ arg.servername }}
          ServerAlias:
            - {{ arg.serveralias }}
          ErrorLog: {{ arg.errorlog }}
          CustomLog: {{ arg.customlog }}
          DocumentRoot: {{ arg.docroot }}

enable_{{ site }}_site:
  apache_site.enabled:
    - name: {{ site }}.conf

{% endfor %}
