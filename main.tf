resource "google_service_account" "service_account" {
  account_id   = var.account_id
  display_name = "svc-uat-sa"
}

