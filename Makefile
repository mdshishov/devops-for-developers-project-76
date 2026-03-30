install:
	ansible-galaxy install -r requirements.yml

prepare:
	ansible-playbook -i inventory.ini playbook.yml

deploy:
	ansible-playbook -i inventory.ini playbook.yml -t deploy --ask-vault-pass

monitoring:
	ansible-playbook -i inventory.ini playbook.yml -t monitoring --ask-vault-pass

vault-edit:
	ansible-vault edit group_vars/webservers/vault.yml
