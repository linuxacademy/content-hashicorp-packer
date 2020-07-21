knife[:editor] = "/usr/bin/vim"
current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                'cloud_user'
client_key               "/home/cloud_user/chef-repo/.chef/cloud_user.pem"
validation_client_name   'bookapp'
validation_key           "/home/cloud_user/chef-repo/.chef/bookapp.pem"
chef_server_url          'https://chef.ec2.internal/organizations/bookapp'
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["/home/cloud_user/chef-repo/cookbooks"]
