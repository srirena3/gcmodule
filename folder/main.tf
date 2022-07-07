module "folder" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.0"

  parent    = var.parent
  names     = var.names
  set_roles = var.set_roles

  per_folder_admins = var.per_folder_admins
  all_folder_admins = var.all_folder_admins
}
