workflow "issues" {
  on = "issues"
  resolves = ["Add an issue to project"]
}

action "Add an issue to project" {
  uses = "docker://masutaka/github-actions-all-in-one-project"
  secrets = ["GITHUB_TOKEN"]
  args = ["issue"]
  env = {
    PROJECT_URL = "https://github.com/toshimaru/toshimaru/projects/1"
    INITIAL_COLUMN_NAME = "Backlog"
  }
}

workflow "issues 2" {
  on = "issues"
  resolves = ["Add an issue to user's project"]
}

action "Add an issue to user's project" {
  uses = "docker://masutaka/github-actions-all-in-one-project"
  secrets = ["GITHUB_TOKEN"]
  args = ["issue"]
  env = {
    PROJECT_URL = "https://github.com/users/toshimaru/projects/1"
    INITIAL_COLUMN_NAME = "To do"
  }
}
