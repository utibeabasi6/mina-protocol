# Mina protocol setup

## How to run

- Clone the repository by running the command `git clone <repo_url>`

- Replace the key pair in varibles.tf with the key pair to associate with the instance and ass the .pem file in a directory called secrets in the project root

- Run the command `make init` to initialize terraform

- Run the command `make` to deploy the infrastructure with terraform and deploy the mina node with ansible as well. If the ansible playbook fails, wait a while for the instance to be ready and run the command `make config` to re-deploy.

- `cd` into the terraform directory and run the command `terraform output` to get the ip address of the server. Next, run the commans `ssh ubuntu@<ip_address> -i secrets/<key_pair.pem>` to ssh into the instance.

- Run `systemctl --user status mina` to verify the status of the mina node.

- Run the command `journalctl --user -u mina -n 1000 -f` as well to view the logs generated.

- Run the command `mina client status` to get the current status of the node. The status moves from Bootstrap to Catchup to Synced and this might take a while so be patient. 

Refer to [the mina documentation](https://docs.minaprotocol.com/en/using-mina/connecting) for more information.

# Todo

- Setup monitoring with Prometheus

- Write Python and Golang scripts to scrape metrics from Prometheus

- Refactor Terraform code to make better use of variables

# Hire me

Looking for a DevOps engineer or SRE to join your team? Reach out to me via email [utibeabasiumanah6@gmail.com](mailto:utibeabasiumanah6@gmail.com)