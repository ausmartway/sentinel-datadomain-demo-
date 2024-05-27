import "module" "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}


import "module" "tfconfig-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}


import "module" "tfstate-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

import "module" "tfrun-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfrun-functions/tfrun-functions.sentinel"
}

policy "only-allow-resources-from-pmr" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/tf-only-allow-resources-from-pmr/tf-only-allow-resources-from-pmr.sentinel"
  enforcement_level = "advisory"
}