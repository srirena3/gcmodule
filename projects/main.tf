module "shared_vpc_host_project" {
  source          = "../modules/projects"
  name            = "prj-${local.environment}-${local.svpc_project_label}"
  project_id      = "prj-${local.environment}-${local.svpc_project_label}"
  services        = local.svpc_service_apis
  billing_account = var.billing_account
  folder_id       = var.folder_id
  labels          = local.project_terraform_labels
  svpc_host       = true
}