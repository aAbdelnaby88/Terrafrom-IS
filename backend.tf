
terraform { 
  backend "s3" {
    bucket = "aabdelnaby"
    profile= "test"
    key    = "states/dev/terraform.tfstate"
    region = "us-east-2"
  }
}
