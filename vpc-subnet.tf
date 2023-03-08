# _____________________________________________________________
#| Date  : March, 08 2023        
#| Autor : Utrains DevOps Team   
#| 
#| Description :
#|   This file allows to create VPC                     
#|____________________________________________________________

# create default vpc if one does not exit
resource "aws_default_vpc" "default_vpc" {

  tags = {
    Name = "rds utrains devops team vpc"
  }
}

# create a default subnet in the second az if one does not exit
resource "aws_default_subnet" "subnet_az2" {
  availability_zone = data.aws_availability_zones.available_zones.names[1]
}

# create the subnet group for the rds instance
resource "aws_db_subnet_group" "database_subnet_group" {
  name         = "database-subnets"
  subnet_ids   = [aws_default_subnet.subnet_az1.id, aws_default_subnet.subnet_az2.id]
  description  = " subnets for rds"

  tags   = {
    Name = "database-subnets"
  }
}


