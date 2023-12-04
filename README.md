# three-tier-arch-aws-terraform.
Provision of three-tier architecture on AWS using Terraform.
We are assuming that Terraform is already installed in the local host machine.
Go to the working directory containing terraform configuration files.

**
Perform the following command.
"terraform init"
This will download the modules.
It will initialize the backend S3 and terraform has been initialized.
Then perform the following terraform command.
"terraform plan"
This provides a preview of the expected changes the terraform plans to execute.
When Terraform performs a plan, it reads the remote state of the objects to be executed. To make sure that the terraform state is up to date.
Compares the current configuration to the prior state noting any differences and proposes a set of change actions that, if applied make the remote object match the configuration.
As soon as you execute the plan command, it will acquire a state lock. So no one else could acquire a state lock for the configuration files. In case of multiple people working with the same architecture.
As soon as the plan is released, terraform will release the lock.
If you want to save the output of your plan command, you can do that with the "-out" parameter for future reference.
This output file can be passed to the terraform apply command during the terraform automation.
After the plan, we can execute the terraform apply command.
It would again acquire the state lock so that no one else can change the configuration files.
During the execution of this command.
Once the command is run, it would require the user to enter "yes" as confirmation of the terraform script to our infrastructure.
After some time the infrastructure creation would be completed.
From the output screen, we can see that the (with number) resources were created.


# AWS Three Tier Architecture with Terraform

This repository contains Terraform configuration files to set up a multi-tier architecture on AWS, including a VPC, database, and compute resources. The infrastructure consists of public-facing web servers, private application servers, and a MySQL database in separate subnets for better security and isolation.

**Architecture Overview**<br>
VPC with public, private, and database subnets
Application Load Balancer (ALB) for web and app tiers
Auto Scaling Groups (ASG) for web and app tiers
MySQL RDS instance for database tier
Security groups to control traffic between the tiers

**Prerequisites**<br>
An AWS account with appropriate permissions
Terraform v1.0.0 or later
AWS CLI v2.0.0 or later

**Configuration**<br>
main.tf<br>
This file contains the required providers and AWS profile configuration.

network.tf<br>
This file sets up the VPC and its subnets, as well as security groups and rules for the web, app, and database tiers.

database.tf<br>
This file creates a MySQL RDS instance, security group, and rules for the database tier.
Currently, RDS is set multi_az = false. To enable multi_az, set value to true<br>

compute.tf<br>
This file sets up the compute resources for the web and app tiers, including launch configurations, auto scaling groups, application load balancers, target groups, and listeners.

**Usage**<br>
Clone this repository:<br>
git clone https://github.com/CentOSAdmin/AWS_demo_multi-tier/tree/main
cd terraform-aws-three-tier<br>

Initialize the Terraform working directory:<br>
terraform init

Review the changes to be applied by running:<br>
terraform plan

Apply the changes:<br>
terraform apply

To destroy the infrastructure, run:<br>
terraform destroy

**Contributing**<br>
Feel free to submit pull requests for any improvements or bug fixes. Please ensure that your changes are well-tested and documented.
