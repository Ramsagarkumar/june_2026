import boto3

vpc_id = "vpc-0abc123456789"

ec2 = boto3.client("ec2")

response = ec2.describe_vpcs(VpcIds=[vpc_id])

vpc = response["Vpcs"][0]

print("VPC ID:", vpc["VpcId"])
print("CIDR Range:", vpc["CidrBlock"])
