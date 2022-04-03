provider "aws" {
   region = "us-east-2"
}

resource "aws_instance" "first_instance" {
      ami = "ami-064ff912f78e3e561"
      instance_type = "t2.micro"
      availability_zone = "us-east-2a"
      key_name = "vprofile-bean-key"
      vpc_security_group_ids = ["sg-0067ecb2e827a7934"]
      tags = {
         Name = "tarra_instance"
         }

}