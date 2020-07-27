mkdir -p ~/packer/parallel/cookbooks
git clone https://github.com/linuxacademy/content-devops-monitoring-app.git ~/packer/parallel/app
git clone https://github.com/chef-cookbooks/docker.git ~/packer/parallel/cookbooks/docker
mkdir ~/packer/parallel/cookbooks/docker/recipes
(cd ~/packer/parallel/cookbooks/docker/recipes/; curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/chef/recipefiles.sh | bash)

