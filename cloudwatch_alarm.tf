# Create a cloudwatch alarm for EC2 instances and alarm_actions to SNS topic and stop instance

resource "aws_cloudwatch_metric_alarm" "ec2_cpu_alarm" {
  comparison_operator       = "LessThanOrEqualToThreshold"
  evaluation_periods        = "12"
  datapoints_to_alarm       = "12"
  metric_name               = "CPUUtilization"
  namespace                 = "AWS/EC2"
  period                    = "300" #seconds
  statistic                 = "Average"
  threshold                 = "2"
  alarm_description         = "This alarm stops the EC2 instance if it remains inactive for one hour."
  treat_missing_data        = "missing"
  insufficient_data_actions = []
  alarm_actions             = [aws_sns_topic.topic.arn, "arn:aws:automate:${var.region}:ec2:stop"]

  alarm_name = "stop_test_instance_alarm"

  dimensions = {
    InstanceId = var.instance_ID
  }
}
