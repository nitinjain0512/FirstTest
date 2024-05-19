resource "google_service_account" "service_account" {
  account_id   = var.account_id
  display_name = "svc-uat-sa"
}

resource "google_project_iam_binding" "firestore_owner_binding" {
  role               = "roles/serviceusage.serviceUsageConsumer"
  project = var.gcp_project
  depends_on = [google_service_account.service_account]
}
