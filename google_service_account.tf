resource "google_service_account" "service_account" {
  account_id   = "service-account-id"
  display_name = "Service Account"
}

import {
  id = "projects/{{logical-zephyr-423609-u7}}/serviceAccounts/{{nitin.n.jain@gmail.com}}"
  to = google_service_account.default
}
