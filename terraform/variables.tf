variable "ecs_task_port" {
  description = "containerPort in the task definition"
  type        = number
  default     = 443
}

variable "app_count" {
  description = "Number of docker containers to run"
  type        = number
  default     = 2
}

variable "secretsmanager_recovery_window" {
  description = "Specifies the number of days that AWS Secrets Manager waits before it can delete the secret."
  type        = map(number)
  default     = {
    "caring-dev"  = 0
    "caring-stg"  = 0
    "caring-prod" = 30
  }
}



variable "aws_region" {
  description = "The AWS region to use for this plan."
  type        = string
  default     = "us-east-1"
}

variable "az_count" {
  type    = number
  default = 2
}

variable "log_level" {
  description = "Log level to use for contain based Go applications using Caring's logging package"
  type        = map(string)
  default     = {
    caring-dev : "DEBUG",
    caring-stg : "DEBUG",
    caring-prod : "INFO"
  }
}

variable "log_enable_dev" {
  description = "If set to TRUE, outputs will use Zap's pretty print functionality"
  type        = map(string)
  default     = {
    caring-dev : "FALSE",
    caring-stg : "FALSE",
    caring-prod : "FALSE"
  }
}

variable "log_disable_kinesis" {
  description = "If set to TRUE, containerized application will not log via Kinesis"
  type        = map(string)
  default     = {
    caring-dev : "FALSE",
    caring-stg : "FALSE",
    caring-prod : "FALSE"
  }
}

variable "log_flush_interval" {
  description = "The interval in seconds to flush the log buffer"
  type        = map(string)
  default     = {
    caring-dev : "10",
    caring-stg : "10",
    caring-prod : "10"
  }
}

variable "log_buffer_size" {
  description = "The size in bytes of the log buffer"
  type        = map(string)
  default     = {
    caring-dev : "262144",
    caring-stg : "262144",
    caring-prod : "262144"
  }
}

variable "trace_destination_dns" {
  description = "Destination to send trace spans and other information to"
  type        = map(string)
  default     = {
    caring-dev : "",
    caring-stg : "",
    caring-prod : ""
  }
}

variable "trace_destination_port" {
  description = "TCP port of the trace destination"
  type        = map(string)
  default     = {
    caring-dev : "",
    caring-stg : "",
    caring-prod : ""
  }
}

variable "trace_disable" {
  description = "If set to TRUE, trace aggregation will be disabled."
  type        = map(string)
  default     = {
    caring-dev : "TRUE",
    caring-stg : "TRUE",
    caring-prod : "TRUE"
  }
}

variable "trace_sample_rate" {
  description = "The sample rate per second to use for trace aggregation"
  type        = map(string)
  default     = {
    caring-dev : "1.0",
    caring-stg : "1.0",
    caring-prod : "1.0"
  }
}

variable "sentry_disable" {
  description = "If set to TRUE, Sentry will be disabled"
  type        = map(string)
  default     = {
    caring-dev : "TRUE",
    caring-stg : "TRUE",
    caring-prod : "TRUE"
  }
}


