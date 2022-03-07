up: infra config

init:
	@cd terraform && terraform init

infra: 
	@cd terraform && terraform apply --auto-approve

config: gen
	@ansible-playbook ansible/mina.yaml -i ansible/inventory.ini

gen:
	@chmod +x scripts/gen.sh && ./scripts/gen.sh

down:
	@cd terraform && terraform destroy --auto-approve
