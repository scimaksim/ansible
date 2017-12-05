exit
lab install setup
yum list installed python
sudo yum install -y ansible
ssh servera.lab.example.com
mkdir dep-install
pwd
cd /home/student/
mkdir dep-install
cd dep-install/
vim inventory
ansible dev -i inventory --list
ansible dev -i inventory --list-hosts
lab install grade
lab manage setup
cd ..
mkdir dep-manage
cd dep-manage/
vim ansible.cfg
vim inventory
ansible myself -i inventory --list
vim inventory
ansible myself -i inventory --list
vim ansible.cfg 
ansible intranetweb -i inventory --list -v
vim ansible.cfg 
lab manage grade 
lab adhoc setup
sudo cat /etc/sudoers.d/devops
ssh devops@servera.lab.example.com
pwd
cd ..
mkdir dep-adhoc
cd dep-adhoc/
cat ansible.cfg 
cat inventory 
ansible localhost -m command -a 'id'
ansible localhost -m shell -a 'id'
ansible localhost -m command -a 'id' -u devops
ansible localhost -m command -a 'id' -u root
ansible localhost -m command -a 'cat /etc/motd' -u devops
ansible localhost -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops
ansible localhost -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops --become --become-user root
ansible-doc copy
ansible localhost -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops --become 
ansible localhost -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops --become-user root
ansible servera.lab.example.com -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops --become-user root
ansible servera.lab.example.com -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops --become --become-user root
ansible servera.lab.example.com -m copy -a 'content="Managed by Ansible\n" dest=/etc/motd' -u devops --become-user root
ansible everyone -m command -a 'cat /etc/motd' -u devops
lab adhoc grade
lab deploy-dynamic setup 
cd ..
cd dep-dynamic/
vim ansible.cfg
vim inventory
mkdir inventory
cd inventory/
wget http://materials.example.com/dynamic/inventorya.py -O inventory/inventorya.py
wget http://materials.example.com/dynamic/inventorya.py -O inventorya.py
cd ..
wget http://materials.example.com/dynamic/inventoryw.py -O inventory/inventoryw.py
wget http://materials.example.com/dynamic/hosts -O inventory/hosts
ansible -i inventory/inventorya.py webservers --list
ansible -i inventory/inventorya.py webservers --list-hosts
chmod +x inventory/inventorya.py 
ansible -i inventory/inventorya.py webservers --list-hosts
ansible -i inventory/inventorypw.py webservers --list-hosts
ansible -i inventory/inventoryw.py webservers --list-hosts
chmod +x inventory/inventoryw.py 
ansible -i inventory/inventoryw.py webservers --list-hosts
ansible -i inventory/inventoryw.py --list-hosts
cat inventory/hosts 
ansible webservers --list-hosts
mv inventory/inventorya.py inventory/ainventory.py
ansible webservers --list
lab deploy-dynamic grade 
lab deploy setup 
yum list install ansible
ssh serverb.lab.example.com 'hostname'
ssh devops@serverb
mkdir /home/student/dep-lab
cd /home/student/dep-lab/
vim ansible.cfg
mkdir inventory
cd inventory/
cd ..
wget http://materials.example.com/dynamic/inventory -O inventory/inventory
wget http://materials.example.com/dynamic/binventory.py -O inventory/binventory.py
chmod 755 inventory/binventory.py
vim inventory/inventory 
ansible serverb -m command -a 'id'
vim inventory/inventory 
cat inventory/binventory.py 
wq
ansible serverb.lab.example.com -m command -a 'id'
ansible serverb.lab.example.com -m copy -a 'content="This server is managed by Ansible.\n" dest=/etc/motd' --become
ansible serverb.lab.example.com -m command -a 'cat /etc/motd'
lab deploy grade
mkdir /home/student/imp-yaml
cd /home/student/imp-yaml/
vim dictionaries.yaml
vim numbers.yaml
python -c 'import yaml, sys; print yaml.load(sys.stdin)' < dictionaries.yaml
echo $?
python -c 'import yaml, sys; print yaml.load(sys.stdin)' < numbers.yaml
echo $?
lab yaml grade
lab module setup 
cd ..
cd imp-module/
ansible servera.lab.example.com --list
ansible servera.lab.example.com -m ping
ansible servera.lab.example.com -m yum -a "name=httpd state=latest"
ansible servera.lab.example.com -m yum -a "name=httpd state=latest" -b
lab module grade
ansible servera.lab.example.com -m service -a "name=httpd ebabled=yes state=started" -b
ansible servera.lab.example.com -m service -a "name=httpd enabled=yes state=started" -b
lab module grade
lab playbook setup
cd ..
cd imp-playbook/
vim intranet.yaml
ansible-playbook intranet.yaml --syntax-checl
ansible-playbook intranet.yaml --syntax-check
ip a
ansible-playbook intranet.yaml 
vim intranet.yaml 
ansible-playbook intranet.yaml -vvv
ansible-doc uri
ansible-doc uri -s
ansible-doc uri
lab playbook grade
cd ..
ll
lab playbookinternet setup 
ll
cd imp-playbook/
cd ..
cd imp-lab/
ll
cat ansible.cfg 
cat inventory 
vim internet.yml
ansible-playbook internet.yml --syntax-check
vim internet.yml
ansible-playbook internet.yml --syntax-check
ansible-playbook internet.yml 
vim internet.yml
ansible-playbook internet.yml 
lab playbookinternet grade 
lab manage-variables-playbooks setup 
cd ..
cd dev-vars-playbook/
vim playbook.yml
ansible-playbook playbook.yml --syntax-check
ansible-playbook playbook.yml 
lab manage-variables-playbooks grade 
lab manage-variables-playbooks cleanup 
lab manage-variables-facts setup 
cd ..
cd dev-vars-facts/
ansible webserver -m setup
ansible webserver -m setup -a "filter=ansible_user*"
vim custom.fact
vim setup_facts.yaml
ansible webserver -m setup -a "filter=ansible_local"
ansible-playbook setup_facts.yaml 
vim setup_facts.yaml
ansible-playbook setup_facts.yaml 
ansible webserver -m setup -a "filter=ansible_local"
cd ..
ll
yum install git -y
sudo yum install git -y
git add .
git init
git add .
git commit -m "Practice files"
git push
git remote add https://github.com/scimaksim/ansible.git
ll
pwd
git remote add practice https://github.com/scimaksim/ansible.git
ll
git push 
git push master origin
git remote add practice https://github.com/scimaksim/ansible.git
git remote add practice https://github.com/scimaksim/ansible.git
git push practice master
git pull
git pull practice
git pull practice master
git push practice master
git-revert
git revert
git revert head
git reset --hard HEAD~1
