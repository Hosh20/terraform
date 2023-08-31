# Copyright (c) 2019, 2021 Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl

# provider identity parameters

api_fingerprint = "29:68:77:d2:48:11:37:0e:e4:ea:cb:bd:60:07:2d:7f"

api_private_key_path = "/home/ubuntu/.oci/oci_api_key.pem"

region = "me-jeddah-1"

tenancy_id = "ocid1.tenancy.oc1..aaaaaaaamprus4pvbj46kiekgu7q4jszc77lb74swkeysrywtrvf7425lhfa"

user_id = "ocid1.user.oc1..aaaaaaaaxsx6bhdau2z3fzzdco6cfgvwgpewopxh367lmktaycar73ejuyta"

# general oci parameters

compartment_id = "ocid1.compartment.oc1..aaaaaaaavgxe5w5vwy3k5v7f4kaoxzckcofna3ofvdhiel62jyynwb7w727a"


label_prefix = "Quality"

# vcn parameters
create_internet_gateway = false

create_nat_gateway = false

enable_ipv6 = false

nat_gateway_public_ip_id = "none"

create_service_gateway = false

vcn_cidrs = ["10.0.0.0/16"]

vcn_dns_label = "vcn"

vcn_name = "vcn-Quality"

freeform_tags = {
  environment = "dev"
}

defined_tags = {
  "Operations.CostCenter" = "42"
}

#ID of the DRG attached to the VCN
attached_drg_id = null

# # custom routing rules variable declaration example

# internet_gateway_route_rules = [ # this module input shows how to pass routing information to the vcn module inline, directly on the vcn module block
#   {
#     destination       = "192.168.0.0/16" # Route Rule Destination CIDR
#     destination_type  = "CIDR_BLOCK"     # only CIDR_BLOCK is supported at the moment
#     network_entity_id = "drg"            # for internet_gateway_route_rules input variable, you can use special strings "drg", "internet_gateway" or pass a valid OCID using string or any Named Values
#     description       = "Terraformed - User added Routing Rule: To drg provided to this module. drg_id, if available, is automatically retrieved with keyword drg"
#   },
#   {
#     destination       = "172.16.0.0/16"
#     destination_type  = "CIDR_BLOCK"
#     network_entity_id = "drg"
#     description       = "Terraformed - User added Routing Rule: To drg provided to this module. drg_id, if available, is automatically retrieved with keyword drg"
#   },
#   {
#     destination       = "203.0.113.0/24" # rfc5737 (TEST-NET-3)
#     destination_type  = "CIDR_BLOCK"
#     network_entity_id = "internet_gateway"
#     description       = "Terraformed - User added Routing Rule: To Internet Gateway created by this module. internet_gateway_id is automatically retrieved with keyword internet_gateway"
#   },
#   # {
#   #   destination       = "192.168.1.0/24"
#   #   destination_type  = "CIDR_BLOCK"
#   #   network_entity_id = "ocid1.localpeeringgateway.oc1.aaaaaa" # <-- edit this OCID
#   #   description       = "Terraformed - User added Routing Rule: To lpg with lpg_id directly passed by user. Useful for gateways created outside of vcn module"
#   # },
# ]

# nat_gateway_route_rules = [ # this is a local that can be used to pass routing information to vcn module for either route tables
#   {
#     destination       = "192.168.0.0/16" # Route Rule Destination CIDR
#     destination_type  = "CIDR_BLOCK"     # only CIDR_BLOCK is supported at the moment
#     network_entity_id = "drg"            # for nat_gateway_route_rules input variable, you can use special strings "drg", "nat_gateway" or pass a valid OCID using string or any Named Values
#     description       = "Terraformed - User added Routing Rule: To drg provided to this module. drg_id, if available, is automatically retrieved with keyword drg"
#   },
#   {
#     destination       = "203.0.113.0/24" # rfc5737 (TEST-NET-3)
#     destination_type  = "CIDR_BLOCK"
#     network_entity_id = "nat_gateway"
#     description       = "Terraformed - User added Routing Rule: To NAT Gateway created by this module. nat_gateway_id is automatically retrieved with keyword nat_gateway"
#   },
#   {
#     destination       = "192.168.1.0/24"
#     destination_type  = "CIDR_BLOCK"
#     network_entity_id = oci_core_local_peering_gateway.lpg.id
#     description       = "Terraformed - User added Routing Rule: To lpg with lpg_id directly passed by user. Useful for gateways created outside of vcn module"
#   },
# ]

# # Local peering gateway variable declaration example

# hub_local_peering_gateways = {
#   to_spoke1 = { # LPG will be in acceptor mode with a route table attached
#     route_table_id = ""
#     peer_id        = ""
#   }
# }

#Subnets
#subnets = {
#  sub1 = {name = "subnet1",cidr_block = "10.0.4.0/24"}
#  sub2 = {cidr_block="10.0.5.0/24",type="private"}
#}