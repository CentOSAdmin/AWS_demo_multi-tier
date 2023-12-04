# three-tier-arch-aws-terraform
Provision three tier architecture on AWS using Terraform
go the working directory containing terraform configuration files
perform the following command
terraform init
this will download the modules
it will initialize the backend S3 and terraform has been initialized
then perform the following terraform command
terraform plan
this provides a preview the expected changes the terraform plans to execute.
When terraform performs a plan, it reads the remote state of the objects to be executed. To make sure that the terraform state is up to date.
Compares the current configuration to the prior state and noting any differences and proposes a set of change action, if applied make the remote object match the configuration.
As soon as you execute the plan command, it would accure a state lock. So no one else could accure a state lock the configuration files. In case of multiple people are working with the same architechture.
As soon as the plan is released, terraform will release the lock.
If you want to save the output of your plan command, for future references, you can do that with the "-out" prameter.
This output file can be passed to the terraform apply command during the terraform automation.
after plan we can execute the terraform apply command.
It would again accquire the state lock so that no one else can make changes to the configuration files.
During the execution of this command.
Once the command is run, it would reques the user to enter "yes" as confirmation of the terraform script to our infrastructure.
After some time the infrastructure creation would be completed.
From the output screen we can see that the (with number) resources were cerated.
