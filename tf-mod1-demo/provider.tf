data "sops_file" "cu5083-key" {
  # export SOPS_AGE_KEY_FILE=~/.config/sops/age/keys.txt
  source_file = "../../cu5083.enc.json"
}

provider "google" {
  credentials = data.sops_file.cu5083-key.raw

  project = "cu5083"
  region  = "us-central1"  // default
  zone    = "us-central1-c"  // default
}
