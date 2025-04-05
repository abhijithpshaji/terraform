provider "aws" {
  region = "ap-south-1" # Mumbai region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "abhijith-8078-1122" # Replace with a globally unique name
}

