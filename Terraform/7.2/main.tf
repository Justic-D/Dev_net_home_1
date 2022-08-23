
#resource "random_pet" "pet_name" {
#  length    = 3
#  separator = "-"
#}

resource "aws_iam_user" "new_user" {
  name = "new_user"
}

#resource "aws_s3_bucket" "bucket" {
#  bucket = "${random_pet.pet_name.id}-bucket"
#
#  tags = {
#    Name        = "My bucket"
#    Environment = "Dev"
#  }
#}

#resource "aws_s3_bucket_acl" "bucket" {
#  bucket = aws_s3_bucket.bucket.id
#
#  acl = "private"
#}

resource "aws_iam_policy" "policy" {
  name        = "My_new_policy"
  description = "My test policy"

  policy = <<EOT
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": [
                "cloudwatch:GetInsightRuleReport",
                "pi:*"
            ],
            "Resource": [
                "arn:aws:cloudwatch:*:*:insight-rule/DynamoDBContributorInsights*",
                "arn:aws:pi:*:*:metrics/rds/*"
            ]
        },
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": [
                "lambda:CreateFunction",
                "iam:GetPolicyVersion",
                "organizations:ListRoots",
                "rds:*",
                "cloudwatch:DeleteAlarms",
                "ec2:DescribeCoipPools",
                "logs:*",
                "dynamodb:*",
                "sns:Unsubscribe",
                "organizations:DescribeAccount",
                "lambda:GetFunctionConfiguration",
                "autoscaling:*",
                "organizations:ListChildren",
                "datapipeline:CreatePipeline",
                "ec2:DescribeInternetGateways",
                "kinesis:ListStreams",
                "resource-groups:GetGroup",
                "kinesis:DescribeStreamSummary",
                "organizations:DescribeOrganization",
                "ec2:DescribeLocalGatewayRouteTableVpcAssociations",
                "cloudwatch:DescribeAlarmsForMetric",
                "logs:GetLogEvents",
                "ec2:DescribeAccountAttributes",
                "lambda:DeleteFunction",
                "sns:Subscribe",
                "sns:*",
                "iam:GetRole",
                "datapipeline:ListPipelines",
                "application-autoscaling:RegisterScalableTarget",
                "sns:ListSubscriptionsByTopic",
                "lambda:ListFunctions",
                "dax:*",
                "iam:GetPolicy",
                "outposts:GetOutpostInstanceTypes",
                "sns:CreateTopic",
                "application-autoscaling:DeleteScalingPolicy",
                "s3-object-lambda:*",
                "cloudwatch:GetMetricStatistics",
                "iam:*",
                "resource-groups:CreateGroup",
                "cloudwatch:*",
                "application-autoscaling:DescribeScalingPolicies",
                "lambda:ListEventSourceMappings",
                "application-autoscaling:PutScalingPolicy",
                "cloudwatch:DescribeAlarms",
                "ec2:*",
                "resource-groups:ListGroupResources",
                "datapipeline:ActivatePipeline",
                "lambda:DeleteEventSourceMapping",
                "ec2:DescribeSubnets",
                "resource-groups:GetGroupQuery",
                "autoscaling:Describe*",
                "tag:GetResources",
                "sns:DeleteTopic",
                "cloudwatch:GetMetricData",
                "logs:DescribeLogStreams",
                "sns:ListTopics",
                "sns:SetTopicAttributes",
                "lambda:CreateEventSourceMapping",
                "datapipeline:DescribePipelines",
                "ec2:DescribeVpcAttribute",
                "cloudwatch:ListMetrics",
                "organizations:DescribePolicy",
                "sns:Publish",
                "cloudwatch:DescribeAlarmHistory",
                "ec2:DescribeAvailabilityZones",
                "application-autoscaling:DescribeScalingActivities",
                "organizations:DescribeOrganizationalUnit",
                "kms:DescribeKey",
                "ec2:DescribeLocalGatewayRouteTables",
                "organizations:ListPoliciesForTarget",
                "datapipeline:PutPipelineDefinition",
                "organizations:ListTargetsForPolicy",
                "ec2:DescribeLocalGatewayRouteTablePermissions",
                "s3:*",
                "ec2:GetCoipPoolUsage",
                "application-autoscaling:DescribeScalableTargets",
                "datapipeline:QueryObjects",
                "datapipeline:DescribeObjects",
                "iam:ListRoles",
                "elasticloadbalancing:*",
                "kinesis:DescribeStream",
                "sns:ListSubscriptions",
                "datapipeline:GetPipelineDefinition",
                "resource-groups:ListGroups",
                "ec2:DescribeLocalGateways",
                "ec2:DescribeSecurityGroups",
                "organizations:ListPolicies",
                "resource-groups:DeleteGroup",
                "cloudwatch:PutMetricAlarm",
                "ec2:DescribeVpcs",
                "kms:ListAliases",
                "organizations:ListParents",
                "datapipeline:DeletePipeline",
                "application-autoscaling:DeregisterScalableTarget"
            ],
            "Resource": "*"
        },
        {
            "Sid": "VisualEditor2",
            "Effect": "Allow",
            "Action": "iam:CreateServiceLinkedRole",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "iam:AWSServiceName": [
                        "autoscaling.amazonaws.com",
                        "ec2scheduled.amazonaws.com",
                        "elasticloadbalancing.amazonaws.com",
                        "spot.amazonaws.com",
                        "spotfleet.amazonaws.com",
                        "transitgateway.amazonaws.com"
                    ]
                }
            }
        },
        {
            "Sid": "VisualEditor3",
            "Effect": "Allow",
            "Action": "iam:PassRole",
            "Resource": "*",
            "Condition": {
                "StringLike": {
                    "iam:PassedToService": [
                        "application-autoscaling.amazonaws.com",
                        "application-autoscaling.amazonaws.com.cn",
                        "dax.amazonaws.com"
                    ]
                }
            }
        },
        {
            "Sid": "VisualEditor4",
            "Effect": "Allow",
            "Action": "iam:CreateServiceLinkedRole",
            "Resource": "*",
            "Condition": {
                "StringEquals": {
                    "iam:AWSServiceName": [
                        "replication.dynamodb.amazonaws.com",
                        "dax.amazonaws.com",
                        "dynamodb.application-autoscaling.amazonaws.com",
                        "contributorinsights.dynamodb.amazonaws.com",
                        "kinesisreplication.dynamodb.amazonaws.com"
                    ]
                }
            }
        },
        {
            "Sid": "VisualEditor5",
            "Effect": "Allow",
            "Action": "iam:CreateServiceLinkedRole",
            "Resource": "*",
            "Condition": {
                "StringLike": {
                    "iam:AWSServiceName": [
                        "rds.amazonaws.com",
                        "rds.application-autoscaling.amazonaws.com"
                    ]
                }
            }
        },
        {
            "Sid": "VisualEditor6",
            "Effect": "Allow",
            "Action": "iam:CreateServiceLinkedRole",
            "Resource": "arn:aws:iam::*:role/aws-service-role/events.amazonaws.com/AWSServiceRoleForCloudWatchEvents*",
            "Condition": {
                "StringLike": {
                    "iam:AWSServiceName": "events.amazonaws.com"
                }
            }
        }
    ]
}
EOT
}

