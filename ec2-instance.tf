provider "aws" { 
  region = "ap-south-1" 
}


resource "aws_instance" "example" {
  ami           = "ami-002f6e91abff6eb96"  # Replace with the desired AMI ID
  instance_type = "t2.micro"               
  key_name      = "vas"                    # SSH key pair name
  
  # Attach the existing security group by its ID
  vpc_security_group_ids = ["sg-06ea60cccfc30f33b"] 

  tags = {
    Name = "Instance"
  }
}

