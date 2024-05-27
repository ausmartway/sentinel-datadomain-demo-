import "module" "tfconfig-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}
  
mock "tfconfig/v2" {
    module {
//change source to the path of the mock file
        source = "../../mocks/mock-tfconfig-v2-all-resources-are-from-pmr.sentinel"
    }
} 

mock "tfrun" {
    module {
//change source to the path of the mock file
        source = "../../mocks/mock-tfrun-all-resources-are-from-pmr.sentinel"
    }
} 

test {
    rules = {
      main          = true
    }
}