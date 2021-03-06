variable "ec2_key" {
  description = "Key name of the Key Pair to use for the EC2 instance."
  type        = string
  default     = ""
}

variable "ec2_ami" {
  description = "AMI ID to use for the EC2 instance."
  type        = string
  default     = ""
}

variable "ec2_name" {
  description = "Name tag of the EC2 instance."
  type        = string
  default     = ""
}

variable "ec2_type" {
  description = "The instance type to use for the EC2 instance."
  type        = string
  default     = ""
}

variable "ec2_subnet_id" {
  description = "VPC Subnet ID to launch in."
  type        = string
  default     = null
}

variable "ec2_security_group_ids" {
  description = "A list of security group IDs to associate with."
  type        = list(string)
  default     = []
}

variable "ec2_monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled."
  type        = bool
  default     = false
}

variable "ec2_associate_public_ip_address" {
  description = "Whether to associate a public IP address with EC2 instance in a VPC."
  type        = bool
  default     = true
}

variable "ec2_az" {
  description = "Availability zone to start the EC2 instance in."
  type        = string
  default     = null
}

variable "ec2_hibernation" {
  description = "If true, the launched EC2 instance will support hibernation."
  type        = bool
  default     = null
}

variable "ec2_private_ip" {
  description = "Private IP address to associate with the instance in a VPC."
  type        = string
  default     = null
}

variable "ec2_secondary_private_ips" {
  description = "A list of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC."
  type        = list(any)
  default     = null
}

variable "ec2_ipv6_addresses" {
  description = "Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface."
  type        = list(any)
  default     = null
}

variable "ec2_ipv6_address_count" {
  description = "A number of IPv6 addresses to associate with the primary network interface."
  type        = number
  default     = null
}

variable "ec2_host_id" {
  description = "ID of a dedicated host that the instance will be assigned to. "
  type        = string
  default     = null
}

variable "ec2_placement_group" {
  description = "Placement Group to start the instance in."
  type        = string
  default     = null
}

variable "ec2_disable_api_termination" {
  description = "If true, enables EC2 Instance Termination Protection."
  type        = bool
  default     = null
}

variable "ec2_instance_initiated_shutdown_behavior" {
  description = "Shutdown behavior for the instance."
  type        = string
  default     = null
}

variable "ec2_userdata" {
  description = "User data to provide when launching the instance."
  type        = string
  default     = null
}

variable "ec2_userdata_base64" {
  description = "Can be used instead of user_data to pass base64-encoded binary data directly."
  type        = string
  default     = null
}

variable "ec2_tenancy" {
  description = "Tenancy of the instance (if the instance is running in a VPC)."
  type        = string
  default     = null
}

variable "ec2_get_password_data" {
  description = "If true, wait for password data to become available and retrieve it."
  type        = bool
  default     = false
}

variable "ec2_iam_instance_profile" {
  description = "IAM Instance Profile to launch the instance with."
  type        = string
  default     = null
}

variable "ec2_root_volume"{
  description = "Root volume for the EC2 instance."
  type        = list(any)
  default     = []
}

variable "ec2_ebs_volume"{
  description = "Additional EBS volume for the EC2 instance."
  type        = list(any)
  default     = []
}


############################################
# for credit_specification
############################################
variable "cpu_credits" {
  description = "Credit option for CPU usage (standard or unlimited)."
  type        = string
  default     = null
}

############################################
# for enclave_options
############################################
variable "enclave_options_enabled" {
  description = "If true, enable Nitro Enclaves on launched instances."
  type        = bool
  default     = null
}

############################################
# for capacity_reservation_specification
############################################
variable "capacity_reservation_preference" {
  description = "Indicates the instance's Capacity Reservation preferences."
  type        = string
  default     = null
}

variable "capacity_reservation_id" {
  description = "Information about the target Capacity Reservation."
  type        = string
  default     = null
}

############################################
# for timeouts
############################################
variable "timeouts_create" {
  description = "Used when launching the instance (until it reaches the initial running state)."
  type        = string
  default     = "10m"
}

variable "timeouts_update" {
  description = "Used when stopping and starting the instance when necessary during update."
  type        = string
  default     = "10m"
}

variable "timeouts_delete" {
  description = "Used when terminating the instance."
  type        = string
  default     = "20m"
}



