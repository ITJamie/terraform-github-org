module "gpg" {
  source        = "./modules/repository"
  name          = "gpg"
  cookbook_team = github_team.gpg.id
  status_checks = ["ci/circleci: lint"]
}

resource "github_team" "gpg" {
  name        = "gpg"
  description = "gpg Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "gpg-maintainer-1" {
  team_id  = github_team.gpg.id
  username = "damacus"
  role     = "maintainer"
}

