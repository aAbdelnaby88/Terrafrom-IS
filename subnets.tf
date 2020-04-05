resource "aws_subnet" "firstPublic" {

    vpc_id     = aws_vpc.abdo.id

    cidr_block = "10.0.1.0/28"
    availability_zone ="us-east-2c"
    map_public_ip_on_launch =true
   
    tags = {
        Name = "firstPublic"
    }
}

resource "aws_subnet" "secondPublic" {

    vpc_id     = aws_vpc.abdo.id

    cidr_block = "10.0.2.0/28"
    availability_zone ="us-east-2a"
    map_public_ip_on_launch = true
    
    tags = {
        Name = "secondPublic"
    }
}


resource "aws_subnet" "firstPrivate" {
    vpc_id     = aws_vpc.abdo.id

    cidr_block = "10.0.3.0/28"
    availability_zone ="us-east-2c"
    tags = {
        Name = "firstPrivate"
    }
}

resource "aws_subnet" "secondPrivate" {

    vpc_id     = aws_vpc.abdo.id
    
    cidr_block = "10.0.4.0/28"
    availability_zone ="us-east-2a"
    tags = {
        Name = "secondPrivate"
    }
}