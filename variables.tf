variable "project_name" {
  type        = string
  description = "The name of the project to instanciate the instance at."
  default     = "terraformlearning-284414"
}

variable "region_name" {
  type        = string
  description = "The region that this terraform configuration will instanciate at."
  default     = "us-west1"
}

variable "zone_name" {
  type        = string
  description = "The zone that this terraform configuration will instanciate at."
  default     = "us-west1-b"
}

variable "machine_size" {
  type        = string
  description = "The size that this instance will be."
  default     = "f1-micro"
}

variable "image_name" {
  type        = string
  description = "The kind of VM this instance will become"
  default     = "debian-cloud/debian-9"
}

variable "instance_name" {
  type        = string
  description = "Name of the machine"
  default     = "test"
}



