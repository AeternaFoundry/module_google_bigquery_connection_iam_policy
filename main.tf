resource "google_bigquery_connection_iam_policy" "bigquery_connection_iam_policies" {
  for_each = var.bigquery_connection_iam_policies

  connection_id = each.value.connection_id
  policy_data   = each.value.policy_data
  location      = each.value.location
  project       = each.value.project
}

