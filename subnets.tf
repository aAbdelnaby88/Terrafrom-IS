resource "aws_subnet" "firstPublic" {

    vpc_id     = aws_vpc.abdo.id

    cidr_block = "10.1.0.0/28"
    availability_zone ="us-east-2c"
    
   
    tags = {
        Name = "firstPublic"
    }
}

resource "aws_subnet" "secondPublic" {

    vpc_id     = aws_vpc.abdo.id

    cidr_block = "10.2.0.0/28"
    availability_zone ="us-east-2a"
  
    tags = {
        Name = "secondPublic"
    }
}


resource "aws_subnet" "firstPrivate" {
    vpc_id     = aws_vpc.abdo.id

    cidr_block = "10.3.0.0/28"
    availability_zone ="us-east-2c"
    tags = {
        Name = "firstPrivate"
    }
}

resource "aws_subnet" "secondPrivate" {

    vpc_id     = aws_vpc.abdo.id
    
    cidr_block = "10.4.0.0/28"
    availability_zone ="us-east-2a"
    tags = {
        Name = "secondPrivate"
    }
}