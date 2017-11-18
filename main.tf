provider "aws" {
    region = "eu-central-1"
    profile = "fericirii19"
}

resource "aws_instance" "mastodon" {
    ami = "ami-1e339e71"
    instance_type = "t2.micro"
    key_name="mastodon"
 tags {
        Name = "emperor_of_sand"
        }
} 

