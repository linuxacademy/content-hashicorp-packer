mkdir -p troubleshooting/apache
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/apache/init.sls -o troubleshooting/apache/init.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/apache/install.sls -o troubleshooting/apache/install.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/apache/service.sls -o troubleshooting/apache/service.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/apache/vhosts.sls -o troubleshooting/apache/vhosts.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/top.sls -o troubleshooting/top.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/pillar/apache.sls -o pillar/apache.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/pillar/top.sls -o pillar/top.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/troubleshooting/packer.json -o troubleshooting/packer.json
