# _______________________________________________________________________________________________
#| Date  : March, 08 2023        
#| Autor : Utrains DevOps Team   
#| 
#| Description :
#|   This file allows to determine the available zone availability in order to create a subnet.                       
#|______________________________________________________________________________________________

# use data source to get all avalablility zones in region
data "aws_availability_zones" "available_zones" {}


# create a default subnet in the first az.
resource "aws_default_subnet" "subnet_az1" {
  availability_zone = data.aws_availability_zones.available_zones.names[0]
}