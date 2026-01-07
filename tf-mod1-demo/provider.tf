provider "google" {
  credentials = file("../../cu5083-76209ae280b2.json")

  project = "cu5083"
  region  = "us-central1"  // default
  zone    = "us-central1-c"  // default
}
