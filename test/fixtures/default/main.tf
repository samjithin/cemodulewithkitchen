

#Locks the version of Terraform for this particular use case
#terraform {
#  required_version = "~>0.12.0"
#}

provider "google" {
  project     = "terraformlearning-284414"
}


module "computeenginecreation" {
  source = "../../../"
  instance_name = "jithin"
  
}

output "instancedata" {
   value = module.computeenginecreation.instance_name
  
}




