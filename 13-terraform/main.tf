resource "github_repository_file" "file" {
  for_each = fileset("${path.module}", "*.tf")
#  count = length(var.files)

  repository          = "devops-hometasks"
  branch              = "main"
  #file                = "13-terraform/${element(var.files, count.index)}"
  #file                = "13-terraform/versions.tf"
  #content             = file("${path.module}/${element(var.files, count.index)}")
  #content             = file("${element(var.files, count.index)}")
  #content             = file("versions.tf")

  file                = "13-terraform/${each.value}"
  content             =  file("${path.module}/${each.value}")

  commit_message      = "Terraform example"
  commit_author       = "Alexey Smirnov"
  commit_email        = "alexey.work@tut.by"
  #overwrite_on_create = true
}
