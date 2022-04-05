# ------------------ Proxy: Vertex Notebook 
# ------------------ Module Definition 
#

# Local:  modules/[channel]
# Remote: github.com://CloudVLab/terraform-lab-foundation//[module]/[channel]

# Solution: IDE environment 
# Local:  modules/stable
# Remote: github.com/CloudVLab/terraform-lab-foundation//solutions/proxy_vertex_workbench/stable

# Output Value(s):
# - vertex_notebook_url: URL of Browser Service

module "la_vertex_workbench" {
  ## NOTE: When changing the `source` parameter
  ## `terraform init` is required

  ## Local Modules - working
  ## Module subdirectory needs to be defined within the TF directory
  #source = "./solutions/vertex_proxy_workbench/dev"

  ## REMOTE: GitHub (Public) access - working 
  source = "github.com/CloudVLab/terraform-lab-foundation//solutions/proxy_vertex_workbench/dev"

  ## Exchange values between Qwiklabs and Module
  gcp_project_id  = var.gcp_project_id 
  gcp_region      = var.gcp_region 
  gcp_zone        = var.gcp_zone 

  ## Properties: GCE 
  # gceInstanceImage    = "tf-latest-cpu" 
  # gceImageProject     = "deeplearning-platform-release"
  # gceInstanceName     = "cloudlearningservices" 
  # gceInstanceZone     = "us-central1-f"
  # gceInstanceTags     = ["lab-vm"]
  # gceMachineType      = "e2-standard-2"
  # gceInstanceScope    = ["cloud-platform"]

  ## Properties: Cloud Run
  # gcrServiceName      = "workbench-service"
  # gcrRegion           = "us-central1"
  # gcrImagePrimary     = "gcr.io/qwiklabs-resources/notebook-proxy:latest"
  # gcrGoogleService    = "run.googleapis.com"
  # gcrRolePermission   = "roles/run.invoker"
  # gcrMemberPermission = "allUsers"
  # gcrRegion           = "us-central1"
}

