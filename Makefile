TERRAFORM_DIR_DEV := dev
TERRAFORM_DIR_PROD := prod
PLAN_FILE_DEV := ${TERRAFORM_DIR_DEV}/terraform_plan.tfplan
PLAN_FILE_PROD := ${TERRAFORM_DIR_PROD}/terraform_plan.tfplan

plan-dev:
	cd ${TERRAFORM_DIR_DEV} && terraform init
	cd ${TERRAFORM_DIR_DEV} && terraform plan -out=${PLAN_FILE_DEV}

plan-prod:
	cd ${TERRAFORM_DIR_PROD} && terraform init
	cd ${TERRAFORM_DIR_PROD} && terraform plan -out=${PLAN_FILE_PROD}

provision-dev:
	cd ${TERRAFORM_DIR_DEV} && terraform apply ${PLAN_FILE_DEV}

provision-prod:
	cd ${TERRAFORM_DIR_PROD} && terraform apply ${PLAN_FILE_PROD}

clean:
	cd ${TERRAFORM_DIR_DEV} && rm -rf .terraform ${PLAN_FILE_DEV} terraform.tfstate*
	cd ${TERRAFORM_DIR_PROD} && rm -rf .terraform ${PLAN_FILE_PROD} terraform.tfstate*

