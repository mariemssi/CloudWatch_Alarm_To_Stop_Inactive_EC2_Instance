# Stopping Idle EC2 Instances with CloudWatch Alarms

![image](https://github.com/mariemssi/CloudWatch_Alarm_To_Stop_Inactive_EC2_Instance/assets/69463864/9a93ebbe-13cc-4d43-bede-2b44acc35362)


# Steps to run the solution 

1. Clone the project
   
3. Update the variables.tf file by setting the default values of variables or you can do it in the terraform apply command.
   
4. Run `terraform init`
   
5. Run `terraform apply`
   
7. After all resources are created, you need to confirm the subscription to the created SNS topic by following the instructions in the email received in your inbox.

## Remark
You need to provide the AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY credentials to allow Terraform to connect and authenticate successfully to AWS. 
These credentials can be embedded directly into the Terraform code (although this is not considered best practice), 
or you can leverage terminal environment variables or use a shared credentials file in the local file system. 


You find more details about CloudWatch alarms and this solution at this [link](https://medium.com/@meriemiag/reduce-aws-costs-by-stopping-idle-ec2-instances-with-cloudwatch-alarms-ecca40ebf85a)
   
   
