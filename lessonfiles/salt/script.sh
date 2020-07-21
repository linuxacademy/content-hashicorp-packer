mkdir salt/apache
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/salt/apache/init.sls -o salt/apache/init.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/salt/apache/install.sls -o salt/apache/install.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/salt/apache/service.sls -o salt/apache/service.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/salt/apache/vhosts.sls -o salt/apache/vhosts.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/salt/top.sls -o salt/top.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/salt/pillar/apache.sls -o pillar/apache.sls
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/salt/pillar/top.sls -o pillar/top.sls
