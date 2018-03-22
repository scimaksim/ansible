# ec2_instance
Create or Terminate ec2 instances

## Summary
This ansible project contains two playbooks and a single role of the same name to create or terminate an ec2 instance.
When instances are created, they will include the `Name` that matches `ec2_instance_prefix-ec2_instance_name` .  See Extra vars.
When instances are terminated, only those instances which match the `count_tag:` will be removed.  See Roles.

## Requirements
* Tags are required to use this playbook
* Extra variables are required to use this playbook

## Playbooks
* create.yml - creates 1 or more ec2 instances
* terminate.yml - terminates 1 or more ec2 instances

### Examples
`ansible-playbook create.yml --tags="create" -e @extra_vars.yml`

`ansible-playbook terminate.yml --tags="terminate" -e @extra_vars.yml`


## Extra vars
* NOTE:  These are required!
passing an extra variables file is required to configure AWS variables.  Each of these should be customized to your AWS account and instance naming preferences.
```
# Define AWS EC2 parameters required to provision instances
ec2_keypair: ansible-keypair
ec2_type: t2.small
ec2_image: ami-12663b7a
ec2_region: us-east-1
ec2_group_id: sg-12a99a7g
ec2_vpc_subnet_id: subnet-c70647de
ec2_instance_name: demo
ec2_instance_prefix: bh
```
## Tags
These playbooks accept two tags and either is required.
* terminate - ensures that only the role task of terminating an instance(s) is run.
* create - ensures that the roles tasks of creating instance(s) are run.

## Roles
* ec2_instance
This role uses the ec2 module to create or terminate ec2 instances.  It takes advantage of the `exact_count:` and `count_tag:` options
to ensure you are creating exactly the number of instances you need and only terminating those same instances.

### Roles variables
`ec2_wait: yes`

`ec2_exact_count: 1`
