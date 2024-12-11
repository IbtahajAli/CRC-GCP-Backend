provider "google" {
  project = "pure-girder-440304-b0"
  region  = "us-central1"
}

resource "google_cloudfunctions_function" "visitor_counter" {
  name        = "ibtahaj-2nd"
  runtime     = "python311"
  entry_point = "visitor_counter"
  source_archive_bucket = "ibtahajdevops.site"
  source_archive_object = "cloud-resume-terraform.zip"
  trigger_http = true
}