# terraform-ansible-dev-setup
Seamlessly integrate Terraform and Ansible to provision and configure infrastructure. This approach allows you to automate the entire process, from infrastructure provisioning to configuration management.

## Current approach
* Using linode, but you can change out this configuration with your own cloud provider
* Using a root password, so I don't have to maintain a series of ssh keys

## Developer setup
### Terraform Script:
Create your Terraform script to provision the infrastructure. For example, use the Terraform script provided earlier in this conversation to create a Linode server. Save it in a .tf file (e.g., linode_server.tf).
### Terraform Apply:
Run terraform init and terraform apply to provision the infrastructure
* `terraform init`
* `terraform apply`
### Ansible Playbook:
Create your Ansible playbook to configure the Linode server. Modify the Ansible playbook to copy SSH keys and perform other configurations as needed. Save it in a .yml file (e.g., configure_linode.yml).
### Generate Ansible Inventory:
Use terraform-inventory to generate an Ansible inventory file based on the Terraform state. You can install terraform-inventory using pip:
* `pip install terraform-inventory`
Then, run the following command to generate the Ansible inventory:
* `terraform-inventory -inventory terraform-inventory.ini`
### Run Ansible Playbook:
Finally, use the generated Ansible inventory to run your Ansible playbook:
* `ansible-playbook -i terraform-inventory.ini configure_linode.yml`
Ansible will use the inventory file to identify the Linode server and apply the configurations specified in your playbook.

