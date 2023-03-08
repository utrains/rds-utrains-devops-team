# rds-utrains-devops-team

## _Description:_
> Note: `This code is for educational purposes, I recommend you to read the comments in each file of this repository.`

Creation of an RDS database from Terraform. This implementation is set up using best practice access security between Terraform and AWS.

 ## _In this git repository, we perform the following tasks :_  
- generation of a random password in a secure way using the best security practices for an RDS database
- creation of secret manager in aws and storage of secret connection information in the rds database
- creation of VPCs
- creation of an RDS database
- display in the console the information for the connection to the database

## _Prerequisites To execute this code you need to :_  
- install aws cli
- configure aws cli
- install terraform

## _Execution of the code_ 
The command list below allows you to execute the code:

The command list below allows you to execute the code: 
```sh
terraform init
terraform plan
terraform apply -auto-approve
```
- Once finished, do not forget to destroy the resources with the command below

```sh
terraform destroy -auto-approve
```

## Autor
produced by Utrains DevOps Team.