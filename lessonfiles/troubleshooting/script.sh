mkdir -p troubleshooting/salt/apache/
mkdir troubleshooting/pillar
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/apache/init.sls -o troubleshooting/salt/apache/init.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/apache/install.sls -o troubleshooting/salt/apache/install.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/apache/service.sls -o troubleshooting/salt/apache/service.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/apache/vhosts.sls -o troubleshooting/salt/apache/vhosts.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/top.sls -o troubleshooting/salt/top.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/pillar/apache.sls -o troubleshooting/pillar/apache.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/pillar/top.sls -o troubleshooting/pillar/top.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/packer.json -o troubleshooting/packer.json
