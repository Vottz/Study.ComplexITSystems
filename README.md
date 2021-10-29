# Infrastructure

To set up the
credentials [follow this guide](https://learn.hashicorp.com/tutorials/terraform/google-cloud-platform-build#set-up-gcp),
but additionally grant the following roles:

- roles/resources.editor

A short overview of the commands to set up the infrastructure and configure resources:

```terraform
# Initialize
terraform init
terraform plan --out tfplan
terraform apply tfplan

# or short (with manual yes step)
terraform apply

# Connect to the public ip:
ssh username@ip

# Follow Startup Script Log
sudo journalctl -u google-startup-scripts.service -f | grep startup-script
# See Startup Script Log
sudo journalctl -u google-startup-scripts.service | grep startup-script

gcloud auth activate-service-account terraform@<project-name>.iam.gserviceaccount.com --key-file = "credentials.json"
gcloud config set project <project-name>
gcloud compute instances get-serial-port-output <machine-name>
# For Better display on smaller screens use
gcloud compute instances get-serial-port-output <machine-name> | cut -d "]" -f2- | grep startup-script

# Destroy
terraform destroy
```
