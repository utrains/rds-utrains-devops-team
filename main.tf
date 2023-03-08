# ___________________________________________________________________________________
#| Date  : March, 08 2023        
#| Autor : Utrains DevOps Team   
#| 
#| Description :
#|   This file provisions an RDS database in AWS, using best practice passwords.                           
#|___________________________________________________________________________________


# First define the provider 
provider "aws" {
  region = var.resource_region
}

# create the rds instance
resource "aws_db_instance" "db_instance" {
  engine                  = var.database_type
  engine_version          = var.database_version
  multi_az                = false
  identifier              = var.database_identifier

  ### In these two lines, we use the secrets stored in our AWS account for the creation of our RDS database: 
  ### This is a best practice
  username                = local.db_creds.username
  password                = local.db_creds.password


  instance_class          = var.database_class_instance
  allocated_storage       = 200
  db_subnet_group_name    = aws_db_subnet_group.database_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.database_security_group.id]
  availability_zone       = data.aws_availability_zones.available_zones.names[0]
  db_name                 = "applicationdb"
  skip_final_snapshot     = true
}

# We display here, the parameters to connect to the database created.
output "db_username" {
  value = nonsensitive("${aws_db_instance.db_instance.username}")
}
output "db_password" {
  value = nonsensitive("${aws_db_instance.db_instance.password}")
}
output "db_endpoint" {
  value = "${aws_db_instance.db_instance.endpoint}"
}