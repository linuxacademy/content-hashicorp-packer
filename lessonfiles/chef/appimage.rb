docker_image 'forethought-app' do
  tag 'v0.1.0'
  source '/home/ubuntu/app'
  force true
  action :build
end
