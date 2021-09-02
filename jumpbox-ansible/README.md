# Ansible pre-requesities
Following https://docs.ansible.com/ansible/latest/collections/amazon/aws/ec2_module.html

    sudo apt install ansible python3-boto -y
    ansible-galaxy collection install amazon.aws
    ansible-galaxy collection install community.general

Check out https://docs.ansible.com/ansible/2.8/user_guide/intro_dynamic_inventory.html

# Launching this playbook
To start the jumpbox (created in another terraform repo, see https://github.com/ue-joe/3-tier-aws-tf/blob/main/main.tf)

    ansible-playbook -i hosts -t start site.yml

To stop the jumpbox

    ansible-playbook -i hosts -t stop site.yml

# Using Ansible with AWS

The aws ec2 inventory plugin provided by the amazon.aws collection is enabled when specifying the inventory YAML file.
You can validate it works OK with

    ansible-inventory -i ueprod.aws_ec2.yml --graph

# Jumpbox tasks

Pre-requisites:

    ansible-galaxy collection install devsec.hardening

Execute this playbook like this

    ansible-playbook -i ueprod.aws_ec2.yml jumpbox_linux.yml