docker_service 'default' do
  service_manager 'systemd'
  action [:create, :start]
end
