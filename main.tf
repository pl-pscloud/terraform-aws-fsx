resource "aws_fsx_windows_file_system" "pscloud-fsx" {
  active_directory_id       = var.pscloud_managed_ad_id
  kms_key_id                = var.pscloud_kms_key_arn

  storage_capacity          = var.pscloud_storage
  throughput_capacity       = var.pscloud_storage_throughput

  subnet_ids                = var.pscloud_subnets_ids

  security_group_ids        = var.pscloud_security_gr_ids

  tags = {
    Name          = "${var.pscloud_company}_fsx_${var.pscloud_env}_${var.pscloud_project}"
    Project       = var.pscloud_project
  }
}