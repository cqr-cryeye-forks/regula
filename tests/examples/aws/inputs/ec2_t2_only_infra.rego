# Copyright 2020 Fugue, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This package was automatically generated from:
#
#     tests/examples/aws/inputs/ec2_t2_only_infra.tf
#
# using `generate_test_inputs.sh` and should not be modified
# directly.
package tests.examples.aws.inputs.ec2_t2_only_infra
mock_input = {
  "format_version": "0.1",
  "terraform_version": "0.12.18",
  "planned_values": {
    "root_module": {
      "resources": [
        {
          "address": "aws_instance.invalid",
          "mode": "managed",
          "type": "aws_instance",
          "name": "invalid",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "credit_specification": [],
            "disable_api_termination": null,
            "ebs_optimized": null,
            "get_password_data": false,
            "hibernation": null,
            "iam_instance_profile": null,
            "instance_initiated_shutdown_behavior": null,
            "instance_type": "t2.nano",
            "monitoring": null,
            "source_dest_check": true,
            "tags": null,
            "timeouts": null,
            "user_data": null,
            "user_data_base64": null
          }
        },
        {
          "address": "aws_instance.valid_2xlarge",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_2xlarge",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "credit_specification": [],
            "disable_api_termination": null,
            "ebs_optimized": null,
            "get_password_data": false,
            "hibernation": null,
            "iam_instance_profile": null,
            "instance_initiated_shutdown_behavior": null,
            "instance_type": "t2.2xlarge",
            "monitoring": null,
            "source_dest_check": true,
            "tags": null,
            "timeouts": null,
            "user_data": null,
            "user_data_base64": null
          }
        },
        {
          "address": "aws_instance.valid_large",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_large",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "credit_specification": [],
            "disable_api_termination": null,
            "ebs_optimized": null,
            "get_password_data": false,
            "hibernation": null,
            "iam_instance_profile": null,
            "instance_initiated_shutdown_behavior": null,
            "instance_type": "t2.large",
            "monitoring": null,
            "source_dest_check": true,
            "tags": null,
            "timeouts": null,
            "user_data": null,
            "user_data_base64": null
          }
        },
        {
          "address": "aws_instance.valid_medium",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_medium",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "credit_specification": [],
            "disable_api_termination": null,
            "ebs_optimized": null,
            "get_password_data": false,
            "hibernation": null,
            "iam_instance_profile": null,
            "instance_initiated_shutdown_behavior": null,
            "instance_type": "t2.medium",
            "monitoring": null,
            "source_dest_check": true,
            "tags": null,
            "timeouts": null,
            "user_data": null,
            "user_data_base64": null
          }
        },
        {
          "address": "aws_instance.valid_micro",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_micro",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "credit_specification": [],
            "disable_api_termination": null,
            "ebs_optimized": null,
            "get_password_data": false,
            "hibernation": null,
            "iam_instance_profile": null,
            "instance_initiated_shutdown_behavior": null,
            "instance_type": "t2.micro",
            "monitoring": null,
            "source_dest_check": true,
            "tags": null,
            "timeouts": null,
            "user_data": null,
            "user_data_base64": null
          }
        },
        {
          "address": "aws_instance.valid_small",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_small",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "credit_specification": [],
            "disable_api_termination": null,
            "ebs_optimized": null,
            "get_password_data": false,
            "hibernation": null,
            "iam_instance_profile": null,
            "instance_initiated_shutdown_behavior": null,
            "instance_type": "t2.small",
            "monitoring": null,
            "source_dest_check": true,
            "tags": null,
            "timeouts": null,
            "user_data": null,
            "user_data_base64": null
          }
        },
        {
          "address": "aws_instance.valid_xlarge",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_xlarge",
          "provider_name": "aws",
          "schema_version": 1,
          "values": {
            "credit_specification": [],
            "disable_api_termination": null,
            "ebs_optimized": null,
            "get_password_data": false,
            "hibernation": null,
            "iam_instance_profile": null,
            "instance_initiated_shutdown_behavior": null,
            "instance_type": "t2.xlarge",
            "monitoring": null,
            "source_dest_check": true,
            "tags": null,
            "timeouts": null,
            "user_data": null,
            "user_data_base64": null
          }
        },
        {
          "address": "data.aws_ami.ubuntu",
          "mode": "data",
          "type": "aws_ami",
          "name": "ubuntu",
          "provider_name": "aws",
          "schema_version": 0,
          "values": {
            "executable_users": null,
            "filter": [
              {
                "name": "name",
                "values": [
                  "ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"
                ]
              },
              {
                "name": "virtualization-type",
                "values": [
                  "hvm"
                ]
              }
            ],
            "most_recent": true,
            "name_regex": null,
            "owners": [
              "099720109477"
            ]
          }
        }
      ]
    }
  },
  "resource_changes": [
    {
      "address": "aws_instance.invalid",
      "mode": "managed",
      "type": "aws_instance",
      "name": "invalid",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "credit_specification": [],
          "disable_api_termination": null,
          "ebs_optimized": null,
          "get_password_data": false,
          "hibernation": null,
          "iam_instance_profile": null,
          "instance_initiated_shutdown_behavior": null,
          "instance_type": "t2.nano",
          "monitoring": null,
          "source_dest_check": true,
          "tags": null,
          "timeouts": null,
          "user_data": null,
          "user_data_base64": null
        },
        "after_unknown": {
          "ami": true,
          "arn": true,
          "associate_public_ip_address": true,
          "availability_zone": true,
          "cpu_core_count": true,
          "cpu_threads_per_core": true,
          "credit_specification": [],
          "ebs_block_device": true,
          "ephemeral_block_device": true,
          "host_id": true,
          "id": true,
          "instance_state": true,
          "ipv6_address_count": true,
          "ipv6_addresses": true,
          "key_name": true,
          "metadata_options": true,
          "network_interface": true,
          "outpost_arn": true,
          "password_data": true,
          "placement_group": true,
          "primary_network_interface_id": true,
          "private_dns": true,
          "private_ip": true,
          "public_dns": true,
          "public_ip": true,
          "root_block_device": true,
          "secondary_private_ips": true,
          "security_groups": true,
          "subnet_id": true,
          "tenancy": true,
          "volume_tags": true,
          "vpc_security_group_ids": true
        }
      }
    },
    {
      "address": "aws_instance.valid_2xlarge",
      "mode": "managed",
      "type": "aws_instance",
      "name": "valid_2xlarge",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "credit_specification": [],
          "disable_api_termination": null,
          "ebs_optimized": null,
          "get_password_data": false,
          "hibernation": null,
          "iam_instance_profile": null,
          "instance_initiated_shutdown_behavior": null,
          "instance_type": "t2.2xlarge",
          "monitoring": null,
          "source_dest_check": true,
          "tags": null,
          "timeouts": null,
          "user_data": null,
          "user_data_base64": null
        },
        "after_unknown": {
          "ami": true,
          "arn": true,
          "associate_public_ip_address": true,
          "availability_zone": true,
          "cpu_core_count": true,
          "cpu_threads_per_core": true,
          "credit_specification": [],
          "ebs_block_device": true,
          "ephemeral_block_device": true,
          "host_id": true,
          "id": true,
          "instance_state": true,
          "ipv6_address_count": true,
          "ipv6_addresses": true,
          "key_name": true,
          "metadata_options": true,
          "network_interface": true,
          "outpost_arn": true,
          "password_data": true,
          "placement_group": true,
          "primary_network_interface_id": true,
          "private_dns": true,
          "private_ip": true,
          "public_dns": true,
          "public_ip": true,
          "root_block_device": true,
          "secondary_private_ips": true,
          "security_groups": true,
          "subnet_id": true,
          "tenancy": true,
          "volume_tags": true,
          "vpc_security_group_ids": true
        }
      }
    },
    {
      "address": "aws_instance.valid_large",
      "mode": "managed",
      "type": "aws_instance",
      "name": "valid_large",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "credit_specification": [],
          "disable_api_termination": null,
          "ebs_optimized": null,
          "get_password_data": false,
          "hibernation": null,
          "iam_instance_profile": null,
          "instance_initiated_shutdown_behavior": null,
          "instance_type": "t2.large",
          "monitoring": null,
          "source_dest_check": true,
          "tags": null,
          "timeouts": null,
          "user_data": null,
          "user_data_base64": null
        },
        "after_unknown": {
          "ami": true,
          "arn": true,
          "associate_public_ip_address": true,
          "availability_zone": true,
          "cpu_core_count": true,
          "cpu_threads_per_core": true,
          "credit_specification": [],
          "ebs_block_device": true,
          "ephemeral_block_device": true,
          "host_id": true,
          "id": true,
          "instance_state": true,
          "ipv6_address_count": true,
          "ipv6_addresses": true,
          "key_name": true,
          "metadata_options": true,
          "network_interface": true,
          "outpost_arn": true,
          "password_data": true,
          "placement_group": true,
          "primary_network_interface_id": true,
          "private_dns": true,
          "private_ip": true,
          "public_dns": true,
          "public_ip": true,
          "root_block_device": true,
          "secondary_private_ips": true,
          "security_groups": true,
          "subnet_id": true,
          "tenancy": true,
          "volume_tags": true,
          "vpc_security_group_ids": true
        }
      }
    },
    {
      "address": "aws_instance.valid_medium",
      "mode": "managed",
      "type": "aws_instance",
      "name": "valid_medium",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "credit_specification": [],
          "disable_api_termination": null,
          "ebs_optimized": null,
          "get_password_data": false,
          "hibernation": null,
          "iam_instance_profile": null,
          "instance_initiated_shutdown_behavior": null,
          "instance_type": "t2.medium",
          "monitoring": null,
          "source_dest_check": true,
          "tags": null,
          "timeouts": null,
          "user_data": null,
          "user_data_base64": null
        },
        "after_unknown": {
          "ami": true,
          "arn": true,
          "associate_public_ip_address": true,
          "availability_zone": true,
          "cpu_core_count": true,
          "cpu_threads_per_core": true,
          "credit_specification": [],
          "ebs_block_device": true,
          "ephemeral_block_device": true,
          "host_id": true,
          "id": true,
          "instance_state": true,
          "ipv6_address_count": true,
          "ipv6_addresses": true,
          "key_name": true,
          "metadata_options": true,
          "network_interface": true,
          "outpost_arn": true,
          "password_data": true,
          "placement_group": true,
          "primary_network_interface_id": true,
          "private_dns": true,
          "private_ip": true,
          "public_dns": true,
          "public_ip": true,
          "root_block_device": true,
          "secondary_private_ips": true,
          "security_groups": true,
          "subnet_id": true,
          "tenancy": true,
          "volume_tags": true,
          "vpc_security_group_ids": true
        }
      }
    },
    {
      "address": "aws_instance.valid_micro",
      "mode": "managed",
      "type": "aws_instance",
      "name": "valid_micro",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "credit_specification": [],
          "disable_api_termination": null,
          "ebs_optimized": null,
          "get_password_data": false,
          "hibernation": null,
          "iam_instance_profile": null,
          "instance_initiated_shutdown_behavior": null,
          "instance_type": "t2.micro",
          "monitoring": null,
          "source_dest_check": true,
          "tags": null,
          "timeouts": null,
          "user_data": null,
          "user_data_base64": null
        },
        "after_unknown": {
          "ami": true,
          "arn": true,
          "associate_public_ip_address": true,
          "availability_zone": true,
          "cpu_core_count": true,
          "cpu_threads_per_core": true,
          "credit_specification": [],
          "ebs_block_device": true,
          "ephemeral_block_device": true,
          "host_id": true,
          "id": true,
          "instance_state": true,
          "ipv6_address_count": true,
          "ipv6_addresses": true,
          "key_name": true,
          "metadata_options": true,
          "network_interface": true,
          "outpost_arn": true,
          "password_data": true,
          "placement_group": true,
          "primary_network_interface_id": true,
          "private_dns": true,
          "private_ip": true,
          "public_dns": true,
          "public_ip": true,
          "root_block_device": true,
          "secondary_private_ips": true,
          "security_groups": true,
          "subnet_id": true,
          "tenancy": true,
          "volume_tags": true,
          "vpc_security_group_ids": true
        }
      }
    },
    {
      "address": "aws_instance.valid_small",
      "mode": "managed",
      "type": "aws_instance",
      "name": "valid_small",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "credit_specification": [],
          "disable_api_termination": null,
          "ebs_optimized": null,
          "get_password_data": false,
          "hibernation": null,
          "iam_instance_profile": null,
          "instance_initiated_shutdown_behavior": null,
          "instance_type": "t2.small",
          "monitoring": null,
          "source_dest_check": true,
          "tags": null,
          "timeouts": null,
          "user_data": null,
          "user_data_base64": null
        },
        "after_unknown": {
          "ami": true,
          "arn": true,
          "associate_public_ip_address": true,
          "availability_zone": true,
          "cpu_core_count": true,
          "cpu_threads_per_core": true,
          "credit_specification": [],
          "ebs_block_device": true,
          "ephemeral_block_device": true,
          "host_id": true,
          "id": true,
          "instance_state": true,
          "ipv6_address_count": true,
          "ipv6_addresses": true,
          "key_name": true,
          "metadata_options": true,
          "network_interface": true,
          "outpost_arn": true,
          "password_data": true,
          "placement_group": true,
          "primary_network_interface_id": true,
          "private_dns": true,
          "private_ip": true,
          "public_dns": true,
          "public_ip": true,
          "root_block_device": true,
          "secondary_private_ips": true,
          "security_groups": true,
          "subnet_id": true,
          "tenancy": true,
          "volume_tags": true,
          "vpc_security_group_ids": true
        }
      }
    },
    {
      "address": "aws_instance.valid_xlarge",
      "mode": "managed",
      "type": "aws_instance",
      "name": "valid_xlarge",
      "provider_name": "aws",
      "change": {
        "actions": [
          "create"
        ],
        "before": null,
        "after": {
          "credit_specification": [],
          "disable_api_termination": null,
          "ebs_optimized": null,
          "get_password_data": false,
          "hibernation": null,
          "iam_instance_profile": null,
          "instance_initiated_shutdown_behavior": null,
          "instance_type": "t2.xlarge",
          "monitoring": null,
          "source_dest_check": true,
          "tags": null,
          "timeouts": null,
          "user_data": null,
          "user_data_base64": null
        },
        "after_unknown": {
          "ami": true,
          "arn": true,
          "associate_public_ip_address": true,
          "availability_zone": true,
          "cpu_core_count": true,
          "cpu_threads_per_core": true,
          "credit_specification": [],
          "ebs_block_device": true,
          "ephemeral_block_device": true,
          "host_id": true,
          "id": true,
          "instance_state": true,
          "ipv6_address_count": true,
          "ipv6_addresses": true,
          "key_name": true,
          "metadata_options": true,
          "network_interface": true,
          "outpost_arn": true,
          "password_data": true,
          "placement_group": true,
          "primary_network_interface_id": true,
          "private_dns": true,
          "private_ip": true,
          "public_dns": true,
          "public_ip": true,
          "root_block_device": true,
          "secondary_private_ips": true,
          "security_groups": true,
          "subnet_id": true,
          "tenancy": true,
          "volume_tags": true,
          "vpc_security_group_ids": true
        }
      }
    },
    {
      "address": "data.aws_ami.ubuntu",
      "mode": "data",
      "type": "aws_ami",
      "name": "ubuntu",
      "provider_name": "aws",
      "change": {
        "actions": [
          "read"
        ],
        "before": null,
        "after": {
          "executable_users": null,
          "filter": [
            {
              "name": "name",
              "values": [
                "ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"
              ]
            },
            {
              "name": "virtualization-type",
              "values": [
                "hvm"
              ]
            }
          ],
          "most_recent": true,
          "name_regex": null,
          "owners": [
            "099720109477"
          ]
        },
        "after_unknown": {
          "architecture": true,
          "arn": true,
          "block_device_mappings": true,
          "creation_date": true,
          "description": true,
          "filter": [
            {
              "values": [
                false
              ]
            },
            {
              "values": [
                false
              ]
            }
          ],
          "hypervisor": true,
          "id": true,
          "image_id": true,
          "image_location": true,
          "image_owner_alias": true,
          "image_type": true,
          "kernel_id": true,
          "name": true,
          "owner_id": true,
          "owners": [
            false
          ],
          "platform": true,
          "product_codes": true,
          "public": true,
          "ramdisk_id": true,
          "root_device_name": true,
          "root_device_type": true,
          "root_snapshot_id": true,
          "sriov_net_support": true,
          "state": true,
          "state_reason": true,
          "tags": true,
          "virtualization_type": true
        }
      }
    }
  ],
  "configuration": {
    "provider_config": {
      "aws": {
        "name": "aws",
        "expressions": {
          "region": {
            "constant_value": "us-west-2"
          }
        }
      }
    },
    "root_module": {
      "resources": [
        {
          "address": "aws_instance.invalid",
          "mode": "managed",
          "type": "aws_instance",
          "name": "invalid",
          "provider_config_key": "aws",
          "expressions": {
            "ami": {
              "references": [
                "data.aws_ami.ubuntu"
              ]
            },
            "instance_type": {
              "constant_value": "t2.nano"
            }
          },
          "schema_version": 1
        },
        {
          "address": "aws_instance.valid_2xlarge",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_2xlarge",
          "provider_config_key": "aws",
          "expressions": {
            "ami": {
              "references": [
                "data.aws_ami.ubuntu"
              ]
            },
            "instance_type": {
              "constant_value": "t2.2xlarge"
            }
          },
          "schema_version": 1
        },
        {
          "address": "aws_instance.valid_large",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_large",
          "provider_config_key": "aws",
          "expressions": {
            "ami": {
              "references": [
                "data.aws_ami.ubuntu"
              ]
            },
            "instance_type": {
              "constant_value": "t2.large"
            }
          },
          "schema_version": 1
        },
        {
          "address": "aws_instance.valid_medium",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_medium",
          "provider_config_key": "aws",
          "expressions": {
            "ami": {
              "references": [
                "data.aws_ami.ubuntu"
              ]
            },
            "instance_type": {
              "constant_value": "t2.medium"
            }
          },
          "schema_version": 1
        },
        {
          "address": "aws_instance.valid_micro",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_micro",
          "provider_config_key": "aws",
          "expressions": {
            "ami": {
              "references": [
                "data.aws_ami.ubuntu"
              ]
            },
            "instance_type": {
              "constant_value": "t2.micro"
            }
          },
          "schema_version": 1
        },
        {
          "address": "aws_instance.valid_small",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_small",
          "provider_config_key": "aws",
          "expressions": {
            "ami": {
              "references": [
                "data.aws_ami.ubuntu"
              ]
            },
            "instance_type": {
              "constant_value": "t2.small"
            }
          },
          "schema_version": 1
        },
        {
          "address": "aws_instance.valid_xlarge",
          "mode": "managed",
          "type": "aws_instance",
          "name": "valid_xlarge",
          "provider_config_key": "aws",
          "expressions": {
            "ami": {
              "references": [
                "data.aws_ami.ubuntu"
              ]
            },
            "instance_type": {
              "constant_value": "t2.xlarge"
            }
          },
          "schema_version": 1
        },
        {
          "address": "data.aws_ami.ubuntu",
          "mode": "data",
          "type": "aws_ami",
          "name": "ubuntu",
          "provider_config_key": "aws",
          "expressions": {
            "filter": [
              {
                "name": {
                  "constant_value": "name"
                },
                "values": {
                  "constant_value": [
                    "ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"
                  ]
                }
              },
              {
                "name": {
                  "constant_value": "virtualization-type"
                },
                "values": {
                  "constant_value": [
                    "hvm"
                  ]
                }
              }
            ],
            "most_recent": {
              "constant_value": true
            },
            "owners": {
              "constant_value": [
                "099720109477"
              ]
            }
          },
          "schema_version": 0
        }
      ]
    }
  }
}
