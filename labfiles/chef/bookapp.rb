apache2_install 'default'

service 'apache2' do
  extend Apache2::Cookbook::Helpers
  service_name lazy { apache_platform_service_name }
  supports restart: true, status: true, reload: true
  action [:start, :enable]
end

app_dir = '/var/www/html/bookapp'

directory app_dir do
  recursive true
end

remote_directory app_dir do
  source 'bookapp'
  extend  Apache2::Cookbook::Helpers
  owner   lazy { default_apache_user }
  group   lazy { default_apache_group }
  mode '0755'
  action :create
end

template 'bookapp' do
  extend  Apache2::Cookbook::Helpers
  source 'basic_site.conf.erb'
  path "#{apache_dir}/sites-available/bookapp.conf"
  variables(
    server_name: 'bookapp.ec2.local',
    document_root: app_dir,
    log_dir: lazy { default_log_dir },
    site_name: 'BookBinge'
  )
end

apache2_site 'bookapp'

apache2_site '000-default' do
  action :disable
end
