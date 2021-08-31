# Ansible pre-requesities
Following https://docs.ansible.com/ansible/latest/collections/amazon/aws/ec2_module.html

    sudo apt install ansible python3-boto -y
    ansible-galaxy collection install amazon.aws

Check out https://docs.ansible.com/ansible/2.8/user_guide/intro_dynamic_inventory.html

# Launching this playbook

    ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts site.yml