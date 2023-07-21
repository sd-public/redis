TERRAFORM_DIR_DEV := dev
TERRAFORM_DIR_PROD := prod

plan-dev:
	cd ${TERRAFORM_DIR_DEV} && terraform init
	cd ${TERRAFORM_DIR_DEV} && terraform plan

plan-prod:
	cd ${TERRAFORM_DIR_PROD} && terraform init
	cd ${TERRAFORM_DIR_PROD} && terraform plan

provision-dev:
	cd ${TERRAFORM_DIR_DEV} && terraform init
	cd ${TERRAFORM_DIR_DEV} && terraform apply

provision-prod:
	cd ${TERRAFORM_DIR_PROD} && terraform init
	cd ${TERRAFORM_DIR_PROD} && terraform apply

clean:
	cd ${TERRAFORM_DIR_DEV} && rm -rf .terraform terraform.tfstate*
	cd ${TERRAFORM_DIR_PROD} && rm -rf .terraform terraform.tfstate*

