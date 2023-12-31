terraform {
    required_providers {
        kubernetes = {
            source  = "hashicorp/kubernetes"
        }
    	github = {
      	    source  = "integrations/github"
            version = "~> 5.0"
        }
    }

    backend "kubernetes" {
        secret_suffix    = "wcg-state"
        config_path      = "~/.kube/config"
        namespace        = "kube-system"
    }
}

provider "github" {
    token = var.tf_token
}

provider "kubernetes" {
    config_path = "~/.kube/config"
}
