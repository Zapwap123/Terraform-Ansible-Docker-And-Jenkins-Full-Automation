variable "region" {
  description = "AWS region to deploy resources"
  default     = "eu-west-1"
}

variable "ami" {
  description = "Ubuntu AMI ID"
  default     = "ami-021d9f8e43481e7da"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name for the instance"
  default     = "ZethLabKey"
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  default     = "TerraformAnsibleDockerServer"
}
