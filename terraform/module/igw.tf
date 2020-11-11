resource "aws_internet_gateway" "vpc_fuchicorp" { 
  vpc_id = "${aws_vpc.vpc_fuchicorp.id}" 
} 
