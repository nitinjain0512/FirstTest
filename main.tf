resource "google_service_account" "service_account" {
  account_id   = "service-account-id"
  display_name = "Service Account"
}

import {
  id = "projects/{{logical-zephyr-423609-u7}}/serviceAccounts/{{nitin.n.jain@gmail.com}}"
  to = google_service_account.default
}


resource "google_project_iam_member" "firestore_owner_binding" {
  project = logical-zephyr-423609-u7
  role    = "roles/datastore.owner"
  member  = "serviceAccount:${nitin.n.jain@gmail.coml}"
}
