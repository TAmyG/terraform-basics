
# AWS CLI
## 1 create user IAM lucy - tZK21{ 
## 2 create user and group project-sapphire-suers
 * abdu 
 * lee 
## 3 add permission AmazoneC2FullAccess and AmazonS3FullAccess to project-sapphire-users group
## 4 Create new Policy EC2-List-Read for EC2 service List, Read actions and all resources for Resource
## 5 Create new Policy s3-readonly-policy for S3 service List, Read actions and all resources for Resource
## 6 create new role s2-reaonly-role of type AWS service for service EC2
## 7 attach policy s3-readonly-policy (step 5) to role s3-readonly-role
Opus


## List users iam
$ aws iam list-users  --endpoint http://aws:4566

## Create users
$ aws iam create-user --user-name mary --endpoint http://aws:4566


## Grant access
$ aws iam --endpoint http://aws:4566 attach-user-policy --user-name mary --policy-arn arn:aws:iam::aws:policy/AdministratorAccess 

$ aws iam --endpoint http://aws:4566 attach-group-policy --group-name project-sapphire-developers --policy-arn arn:aws:iam::aws:policiy/AmazonEC2FullAccess

## create new IAM group
$ aws iam --endpoint http://aws:4566 create-group --group-name project-sapphire-developers

## Add user to group
$ aws iam --endpoint http://aws:4566 add-user-to-group --user-name jack --group-name project-sapphire-developers

## Chech policies to a group
$ aws --endpoint http://aws:4566 iam list-attached-group-policies --group-name project-sapphire-developers

## Check to individuals
$ aws --endpoint http://aws:4566 iam list-attached-user-policies --user-name jack

# TERRAFORM
