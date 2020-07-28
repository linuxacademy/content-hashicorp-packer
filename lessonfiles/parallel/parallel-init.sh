#! /bin/bash

mkdir -p ~/packer/parallel/scripts
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/parallel/prom-init.sh -o ~/packer/parallel/scripts/prom-init.sh
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/parallel/prom-post.sh -o ~/packer/parallel/scripts/prom-post.sh
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/parallel/prometheus.service -o ~/packer/parallel/prometheus.service
curl https://raw.githubusercontent.com/linuxacademy/content-hashicorp-packer/master/lessonfiles/parallel/packer.json -o ~/packer/parallel/packer.json
