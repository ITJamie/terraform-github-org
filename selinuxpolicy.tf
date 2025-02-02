module "selinuxpolicy" {
  source                     = "./modules/repository"
  name                       = "selinux_policy"
  cookbook_team              = github_team.selinux_policy.id
  require_code_owner_reviews = true
}

resource "github_team" "selinux_policy" {
  name        = "selinux_policy"
  description = "selinux_policy Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "selinuxpolicy-member" {
  team_id  = github_team.selinux_policy.id
  username = "shortdudey123"
  role     = "member"
}

resource "github_team_membership" "selinuxpolicy-member-2" {
  team_id  = github_team.selinux_policy.id
  username = "BackSlasher"
  role     = "member"
}

