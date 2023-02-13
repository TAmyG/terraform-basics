Exports logs to specific path
$ TF_LOG_PATH// Env variable
$ TF_LOG //set log level: info, error, warning, debug, trace


Create a key in kAWS
$ aws ec2 create-key-pair --endpoint http://aws:4566 --key-name jade --query 'KeyMaterial' --output text > /root/terraform-projects/project-jade/jade.pem