# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the operator
# ---------------------------------------------------------------------------------------------------------------------

variable "parent" {
  description = "The resource name of the parent Folder or Organization. Must be of the form folders/folder_id or organizations/org_id"
  type        = string
}

# ----------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These variables may be optionally passed in by the templates using this module to overwite the defaults.
# ----------------------------------------------------------------------------------------------------------------------

variable "names" {
  description = "Names of the folders to deploy"
  type        = list(any)
  default     = []
}

variable "set_roles" {
  description = "Enable setting roles via the folder admin variables"
  type        = bool
  default     = false
}

variable "per_folder_admins" {
  type        = map(string)
  description = "IAM-style members per folder who will get extended permissions."
  default     = {}
}

variable "all_folder_admins" {
  type        = list(string)
  description = "List of IAM-style members that will get the extended permissions across all the folders."
  default     = []
}

variable "prefix" {
  type        = string
  description = "Optional prefix to enforce uniqueness of folder names."
  default     = ""
}

variable "folder_admin_roles" {
  type        = list(string)
  description = "List of roles that will be applied to per folder owners on their respective folder."

  default = [
    "roles/owner",
    "roles/resourcemanager.folderViewer",
    "roles/resourcemanager.projectCreator",
    "roles/compute.networkAdmin",
  ]
}
