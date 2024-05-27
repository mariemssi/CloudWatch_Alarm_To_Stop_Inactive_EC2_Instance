# Stopping Idle EC2 Instances with CloudWatch Alarms

![image](https://github.com/mariemssi/CloudWatch_Alarm_To_Stop_Inactive_EC2_Instance/assets/69463864/9a93ebbe-13cc-4d43-bede-2b44acc35362)

The metric that I choose to detect an inactive instance is CPUUtilization, which is collected by default every 5 minutes and sent to CloudWatch. The alarm is triggered only if the CPU utilization remains below 2% at any period during one hour (12 consecutive periods of 5 minutes each). The actions triggered by the alarm are stopping the instance and notifying me by email.

* Metric : CPUUtilization

* Statistic : Average

* Period : 300 seconds (5 minutes)

* Threshold : 2%

* Alarm condition : Lower or Equal

* Evaluation Periods : 12

* Datapoints to Alarm : 12

* Actions : SNS mail notification + EC2 stop Instance

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
   
   
