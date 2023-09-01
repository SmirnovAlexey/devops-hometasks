resource "github_repository_file" "file" {
  for_each = fileset("${path.module}", "*.{tf,tfvars}")

  repository          = "devops-hometasks"
  branch              = "main"
  file                = "13-terraform/${each.value}"
  content             =  file("${path.module}/${each.value}")
  commit_message      = "Terraform example"
  commit_author       = "Alexey Smirnov"
  commit_email        = "alexey.work@tut.by"
  overwrite_on_create = true
}