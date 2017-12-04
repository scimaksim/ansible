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
