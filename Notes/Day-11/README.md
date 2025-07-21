What’s Covered

Creating a reusable Terraform module

Provisioning an Ubuntu EC2 instance

Using variables, outputs, and module calls

Code modularization for cleaner infrastructure


.
├── main.tf

├── variables.tf

├── outputs.tf

└── modules/

    └── ec2/

        ├── main.tf

        ├── variables.tf

        └── outputs.tf

graph TD;
  Root_Project --> EC2_Module
  EC2_Module --> AWS_Provider
  EC2_Module --> Resources[EC2 Instance]
