provider "aws" {
   region = "us-east-2"
}

resource "aws_instance" "first_instance" {
      ami = "ami-064ff912f78e3e561"
      instance_type = "t2.micro"
      availability_zone = "us-east-2a"
      key_name = "vprofile-bean-key"
      vpc_security_group_ids = ["sg-05ed6f021b22c2359"]
      tags = {
         Name = "tarra_instance"
         }

}