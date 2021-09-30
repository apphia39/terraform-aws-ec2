##################################################
# Key Pair
##################################################
resource "aws_key_pair" "ec2_key_pair" {
  key_name   = var.ec2_key
  public_key = file("${var.ec2_key}.pub")
}

##################################################
# EC2 instance
##################################################
resource "aws_instance" "ec2" {
  ami                         = var.ec2_ami
  associate_public_ip_address = var.ec2_associate_public_ip_address
  availability_zone           = var.ec2_az

  disable_api_termination = var.ec2_disable_api_termination
  get_password_data       = var.ec2_get_password_data
  hibernation             = var.ec2_hibernation
  host_id                 = var.ec2_host_id

  iam_instance_profile                 = var.ec2_iam_instance_profile
  instance_initiated_shutdown_behavior = var.ec2_instance_initiated_shutdown_behavior
  instance_type                        = var.ec2_type
  ipv6_address_count                   = var.ec2_ipv6_address_count
  ipv6_addresses                       = var.ec2_ipv6_addresses

  key_name   = aws_key_pair.ec2_key_pair.key_name
  monitoring = var.ec2_monitoring

  placement_group       = var.ec2_placement_group
  private_ip            = var.ec2_private_ip
  secondary_private_ips = var.ec2_secondary_private_ips
  subnet_id             = var.ec2_subnet_id

  tenancy                = var.ec2_tenancy
  user_data              = var.ec2_userdata
  user_data_base64       = var.ec2_userdata_base64
  vpc_security_group_ids = var.ec2_security_group_ids

  credit_specification {
    cpu_credits = var.cpu_credits
  }

  enclave_options {
    enabled = var.enclave_options_enabled
  }

  capacity_reservation_specification {
    capacity_reservation_preference = var.capacity_reservation_preference

    capacity_reservation_target {
      capacity_reservation_id = var.capacity_reservation_id
    }
  }

  timeouts {
    create = var.timeouts_create
    update = var.timeouts_update
    delete = var.timeouts_delete
  }

  root_block_device {
    delete_on_termination = var.root_delete_on_termination
    encrypted             = var.root_encrypted
    iops                  = var.root_iops
    kms_key_id            = var.root_kms_key_id
    volume_size           = var.root_volume_size
    volume_type           = var.root_volume_type
    throughput            = var.root_throughput
  }

  dynamic "ebs_block_device" {
    for_each = var.ebs_volume_size > 0 ? [1] : []

    content {
      delete_on_termination = var.ebs_delete_on_termination
      device_name           = var.ebs_device_name
      encrypted             = var.ebs_encrypted
      iops                  = var.ebs_iops
      kms_key_id            = var.ebs_kms_key_id
      snapshot_id           = var.ebs_snapshot_id
      volume_size           = var.ebs_volume_size
      volume_type           = var.ebs_volume_type
      throughput            = var.ebs_throughput
    }
  }

  tags = {
    Name = var.ec2_name
  }
}