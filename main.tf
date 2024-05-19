resource "google_service_account" "service_account" {
  account_id   = var.account_id
  display_name = "svc-uat-sa"
}
resource "google_project_iam_member" "firestore_owner_binding" {
  project = var.gcp_project
  role    = "roles/datastore.owner"
  member  = "serviceAccount:${google_service_account.service_account}"
}
