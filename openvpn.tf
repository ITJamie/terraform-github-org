module "openvpn" {
  source                     = "./modules/repository"
  name                       = "openvpn"
  cookbook_team              = github_team.openvpn.id
  enforce_admins             = true
  require_code_owner_reviews = true
}

resource "github_team" "openvpn" {
  name        = "openvpn"
  description = "OpenVPN Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "openvpn-maintainer-1" {
  team_id  = github_team.openvpn.id
  username = "flaccid"
  role     = "maintainer"
}

resource "github_team_membership" "openvpn-maintainer-2" {
  team_id  = github_team.openvpn.id
  username = "jeffbyrnes"
  role     = "maintainer"
}

