variable "email_address" {
  type        = string
  description = "The domain name for the website."
  #default     = "your_email_address_endpoint_of_SNS_Topic"
}

variable "instance_ID" {
    description = "The ID of the EC2 instance to monitor"
    type        = string
    #default     = "The_instance_ID_Of_instance_To_Stop_With_Cloudwatch_Alarm"
}

variable "region" {
    #default ="Your_region_where_your_EC2_Instance" 
  
}
