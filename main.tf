provider "aws" {
    region = "eu-central-1"
    profile = "fericirii19"
}

resource "aws_instance" "mastodon" {
    ami = "ami-1e339e71"
    instance_type = "t2.micro"
    key_name="mastodon"

    vpc_security_group_ids =
        [ "${aws_security_group.allow_http_inbound.id}", "${aws_security_group.allow_team.id}" ]

    tags {
        Name = "emperor_of_sand"
        }
} 

resource "aws_security_group" "allow_http_inbound" {
    name = "allow_http"

    ingress {
        from_port = 9000
        to_port = 9000 
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "allow_team" {
    name = "accessness"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["78.96.101.50/32"]
    }
}


