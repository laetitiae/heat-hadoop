#!/bin/bash

# Exit on first command failure or undefined var reference
set -eu
set -x

# Return the non-zero exit code of the last cmd of a pipe (or 0 for success)
set -o pipefail

yum install epel-release git ansible -y

git clone -b %hadoop_ansible_git_rev% %hadoop_ansible_git_url%



cd /tmp/inventory-playbook

ansible-playbook -i localhost, -c local inventory.yaml