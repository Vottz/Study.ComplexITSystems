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

terraform apply --var-file = experiment-3-syncmesh.tfvars

# Find one of the IPs and connect to the instance:
ssh -L 8080 :ip : 8080 username@ip

# Follow Startup Script Log
sudo journalctl -u google-startup-scripts.service -f | grep startup-script
# See Startup Script Log
sudo journalctl -u google-startup-scripts.service | grep startup-script

gcloud auth activate-service-account terraform@dspj-315716.iam.gserviceaccount.com --key-file = "credentials.json"
gcloud config set project dspj-315716
gcloud compute instances get-serial-port-output  experiment-baseline-with-latency-3-test-orchestrator
# For Better display on smaller screens use
gcloud compute instances get-serial-port-output  experiment-baseline-with-latency-9-test-orchestrator | cut -d "]" -f2- | grep startup-script

# Destroy
terraform destroy
```
