resource "vra_deployment" "this" {
  name        = var.appname
  description = "Deployment description testing"

  catalog_item_id      = "ba5d630d-de6d-3176-95f5-35cdc601ae6f"
  project_id           = "c14d9813-dcbf-4a0d-a46d-16331a542b69"

  inputs = {
    flavor = var.vm_size
    image  = var.os_image
    count  = 1
    flag   = false
    dsg_geo = "azu"
    dsg_phase = "Dev"
    DSG_phase_lower = "dev"
    DSG_Monitoring_Email = var.group_email
    DSG_Linux_Admin_User = "admin-dks0409311"
    DSG_Linux_Patch_Group = var.patch_group
    DSG_Monitoring_Group = var.jira_group
    dsg_manager_inv = "Belhumuer, Nick"
    resourcegroup = var.resource_group
    subscription = var.subscription
    dsg_image = var.os_image
    environment = var.environment
    vnetName = var.vnet
    snetName = var.snet
    disk_size = var.disk_size
    dsg_ostype = var.os_image == "Ubuntu2004" ? "U" : "R"
  



  }


  timeouts {
    create = "90m"
    delete = "90m"
    update = "90m"
  }
}