## Getting started with Terraform, Ansible & Jenkins
### Deployment automation of a sample Django application

#
#
#### This practice exercise covers:
- Infrastructure automation
- Software provisioning
- Build & deploy pipline

#### Infrastructure
Terraform script to create a multi-AZ setup consisting of:
- Internet Gateway
- NAT
- Application load balancer
- Bastion machines (one per AZ)
- 3 private service machines (2+1 AZ)
- Extra EBS volumes attached to the service boxes
- RDS (Postgres)
- S3 bucket with read only and read-write access users
