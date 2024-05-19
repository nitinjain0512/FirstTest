resource "google_service_account" "service_account" {
  account_id   = var.gcp_project
  display_name = "svc-uat-sa"
}

