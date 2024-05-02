
variable "vpc_ip" {}

variable "ssh_port" {}

variable "list" {
  type = list
  default = ["t2.micro","t2.large"]
}

variable "map" {
   type = map
   default = {
    us-east1 = "a1.large"
    ap-southeast-1 = "a1.xlarge"
   }
}


#if we need to give environment variable value while apply automatically then in windows add environment varibles in key pair ex:TF_VAR_VARIABLENAME also value and other way in cli is terraform plan/apply -var="variable_name=variable_value"
#for linux export TF_VAR_VARIABLENAME = "VALUE"