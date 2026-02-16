# Create an aws machine
# add the machine to existing Security group
# add an existing .pem key file for the aws machine


provider "aws" {						# file for aws
  region     = "us-east-1"					# region
  access_key = "xxxxxxxxx"	# secret_key using amazon IAM service
  secret_key = "xxxxxxxxx"	# secret_key using amazon IAM
}

							# Data source to retrieve an existing security group by its ID
data "aws_security_group" "existing_sg" {
  id = "sg-#29@##87" 					# Replace with the actual ID of your existing security group
}

resource "aws_instance" "my_ec2_instance" {
   ami           = "ami-0ecb62995f68bb549"			# amazon machine image
   instance_type = "t3.micro"					# machine tier
   key_name      = "pemkey"					# .pem key name
   tags = {
     Name = "xxx"						# resource name
}


  								# Associate the EC2 instance with the existing security group
vpc_security_group_ids = [data.aws_security_group.existing_sg.id]

    }
