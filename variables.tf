variable "bigquery_connection_iam_policies" {
  description = <<EOT
Map of bigquery_connection_iam_policies, attributes below
Required:
    - connection_id
    - policy_data
Optional:
    - location
    - project
EOT

  type = map(object({
    connection_id = string
    policy_data   = string
    location      = optional(string)
    project       = optional(string)
  }))
}

