variable "ksoc_app_id" {
  type        = string
  default     = "4ba48a95-c5da-41d1-897a-57bdf7e34e5b"
  description = "The ID of the KSOC Azure application."
}

variable "ksoc_role_name" {
  type = string
  default = "ksoc-connect"
  description = "Name of custom role to assume"
}
