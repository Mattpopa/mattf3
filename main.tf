provider "aws" {
    region = "eu-central-1"
    profile = "fericirii19"
}

resource "aws_instance" "mastodon" {
    ami = "ami-1e339e71"
    instance_type = "t2.micro"
} 


# the general tf syntax to add a resource is
# 
# resource "PROVIDER_TYPE" "NAME" {
#  [CONFIG ...]
# }
#
# where PROVIDER_TYPE is aws api related naming
# and NAME it can be of your chosing
