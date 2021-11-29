variable "project" {
  type    = string
  default = "cc-tub"
}

variable "public_access" {
  type    = bool
  default = true
}

variable "region" {
  type    = string
  default = "europe-west3"
}

variable "zone" {
  type    = string
  default = "europe-west3-a"
}

variable "machine_type" {
  type        = string
  default     = "e2-small"
  description = "The Machine Type used for all VMs"
}

variable "ssh_keys" {
  type = list(object({
    keymaterial = string
    user        = string
  }))
  description = "list of public ssh keys that have access to the VMs"
  default = [
    {
      user        = "dnhb"
      keymaterial = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDSbM+h0IAyf0uY6NQgyHj80IDwyPsmRpuoOXT6mkEqG05xCBk28iXsqgofP+4RXQFjHSFmQf+9Jb+TtQfg938fq6Nok+G3/iTQJAP+YlC+1nomup5iBRBb7BDJqtDJJPxgFo6J8xx+Ivcuy9xEwenbsEX6NNCNCtCsG8301R26MdYePz0BjPO+krfojI1pVyLH2rN6NcDiUM9FwZV2SYFRiVxEvdbGt6kqcLZAISN0Gq761MU0nVMCbQYkmq78Rzo2hZMYShHmhsLqIlH3A0zyznp8huYBe6PX/Tg1Vwm6193YTPmqnNmC+ibMD87PbdzizLKz3lncUKDTF2H0+7xVr2SanDzfYNfKIEPVO8ud1QXvWzxcdXWyzCjhomEbKPMjQIg6Dlz59lukX/geb2XYDOs9XEYsri/rhfXyrUJY0w5fgse1/PEH+1V3mgr1KN5zpinudijEyGE02dcKS8me5RIx9TUPlk5BXRgDAWVmkbtJSncODfo5ha10DvZJtKk= dnhb"
    },
    {
      user        = "k"
      keymaterial = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC8xRrWR/oOFBoBfcz08gzQVBKaD1/hBBSVmHX3AAGIKS5Kc5N4qoy1kdd2TT84BObZ2CN5V7nCXXuxTA5MQESan57CEmbpGHKuDuwsvVPgq8s3xEH4dSM4GG+A/wV/5tgc1DSbF2kk7YWQdf/C3HoHDajmexumuDKq2RUO+Ckip0Y5rjRJLpc3dQ0jZ4Xd26d4siyLNh6D1qf/HjifGxKIb+BNhSZLrFH1v29vFLPmGvl8/VyOvuNFF/JMiAuTThWTXrQtgXYxpkux594cb4OgFQ36MnQdh2BSyvNjul46TZnE5xat5/lPxBsXD9Vjb8B70t48AudA61uTGfxxVgiGpRQ8MTxKhGKEm333RKmXx+RVdOXTO0/mDXtK0VdTQyFK7aWfxemXkoHUCMT+PVdifhvW077BD7b/fNHA2hNPvoN7gFvwqLDff/fkLgQufGYaujGUikXkaaAdfFTTLfkU7R7+L/A/5vVfKL//bThniqN2p6BwahfK0Pe7taZh25N4ZKXbiCZpcnsiNCviLiCx7+mE9F87woXIPhFSsLqrXPOLe902l8EQH+QCme4dvMZDKODqCOsq3T3Vn0qeMeMzvUBYiV94pBP2Rbmzrrklkzm+x6qnvjHHPrRnvIRKD6YYhXjkThXmvWEgTaXKxNG3OaHSv3Ukpgz/Viufqpy5fw== k"
    }

  ]
}
