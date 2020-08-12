module "vpc_example_simple-vpc" {
 source  = "hhmmll/vpc/aws//examples/simple-vpc"
 version = "2.44.0"
}
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.44.0"
  cidr = "10.0.0.0/16"
  # insert the 14 required variables here
}  
  
# module "vpc" {
#     cidr_block = "10.0.0.0/16"
#     source  = "hhmmll/vpc/aws"
#     version = "2.44.0"
# #   # insert the 14 required variables here
# #   database_subnet_assign_ipv6_address_on_creation = false
# # # Description: Assign IPv6 address on database subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
# #   default_security_group_egress = [{    
# #   }]
# # # Description: List of maps of egress rules to set on the default security group
# #   default_security_group_ingress = [{
# #       rule_no    = 100
# #       action     = "allow"
# #       from_port  = 0
# #       to_port    = 0
# #       protocol   = "-1"
# #        = "0.0.0.0/0"
# #     }]
# # # Description: List of maps of ingress rules to set on the default security group
# #   elasticache_subnet_assign_ipv6_address_on_creation = false
# # # Description: Assign IPv6 address on elasticache subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
# #   enable_classiclink = false
# # # Description: Should be true to enable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic.
# #   enable_classiclink_dns_support = false
# # # Description: Should be true to enable ClassicLink DNS Support for the VPC. Only valid in regions and accounts that support EC2 Classic.
# #   flow_log_cloudwatch_log_group_kms_key_id = ""
# # # Description: The ARN of the KMS Key to use when encrypting log data for VPC flow logs.
# #   flow_log_cloudwatch_log_group_retention_in_days = 7
# # # Description: Specifies the number of days you want to retain log events in the specified log group for VPC flow logs.
# #   flow_log_log_format = "json"
# # # Description: The fields to include in the flow log record, in the order in which they should appear.
# #   intra_subnet_assign_ipv6_address_on_creation = false
# # # Description: Assign IPv6 address on intra subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
# #   private_subnet_assign_ipv6_address_on_creation = false
# # # Description: Assign IPv6 address on private subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
# #   public_subnet_assign_ipv6_address_on_creation = false
# # # Description: Assign IPv6 address on public subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
# #   redshift_subnet_assign_ipv6_address_on_creation = false
# # # Description: Assign IPv6 address on redshift subnet, must be disabled to change IPv6 CIDRs. This is the IPv6 equivalent of map_public_ip_on_launch
# #   vpn_gateway_az = "us-west-1a"
# # # Description: The Availability Zone for the VPN Gateway
# }