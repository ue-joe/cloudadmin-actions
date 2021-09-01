# Ansible pre-requesities
Following https://docs.ansible.com/ansible/latest/collections/amazon/aws/ec2_module.html

    sudo apt install ansible python3-boto -y
    ansible-galaxy collection install amazon.aws

Check out https://docs.ansible.com/ansible/2.8/user_guide/intro_dynamic_inventory.html

# Launching this playbook

    ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts site.yml

# Using Ansible with AWS

The aws ec2 inventory plugin provided by the amazon.aws collection is enabled when specifying the inventory YAML file.
You can validate it works OK with
    ansible-inventory -i ueprod.aws_ec2.yml --graph