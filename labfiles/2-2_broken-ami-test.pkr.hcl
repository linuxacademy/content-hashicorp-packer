source "amazon-ebs" "ubuntu-ami-test": {
access_key = "",
secret_key = "",
security_group_ids = [""],
subnet_id = "",
region = "us-east-1",
ami_name = "ubuntu-ami-test_{{timestamp}}",
instance_type = "t2.micro",
source_ami = "ami-068663a3c619dd892",
communicator = "ssh",
ssh_username = "ubuntu"
}

build {
sources = [ "source.amazon-ebs.ubuntu-ami-test" ]

provisioner "shell" [
script = "init.sh"
]
}
