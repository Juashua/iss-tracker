variable "account_a_id" {
  description = "AWS Account A (management) ID"
  type        = string
}

variable "account_b_id" {
  description = "AWS Account B (ISS tracker) ID"
  type        = string
}

variable "region" {
  description = "AWS region for all resources"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project tag applied to all resources"
  type        = string
  default     = "ISSTracker"
}

variable "iss_poll_interval" {
  description = "EventBridge schedule rate in minutes"
  type        = number
  default     = 1
}

variable "api_throttle_rate" {
  description = "API Gateway requests per second limit"
  type        = number
  default     = 10
}

variable "api_throttle_burst" {
  description = "API Gateway burst limit"
  type        = number
  default     = 50
}