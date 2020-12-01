variable "monitor_name" {
  type        = string
  description = "The name of the monitor"
}

variable "monitor_type" {
  type        = string
  description = "The type of the monitor i.e. metric / query alert etc"
  default     = "metric alert"
}

variable "monitor_query" {
  type        = string
  description = "The query used for the monitor"
}

variable "monitor_message" {
  type        = string
  description = "The message sent when the alert is triggered"
}

variable "tags" {
  type        = list(string)
  description = "The tags included in the monitor"
}

variable "thresholds" {
  type        = map(string)
  description = "The alert condition thresholds for the monitor"
}

variable "slack_channel" {
  type        = string
  description = "The slack channel for the monitor to notify"
}