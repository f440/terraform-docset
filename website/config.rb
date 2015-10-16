#-------------------------------------------------------------------------
# Configure Middleman
#-------------------------------------------------------------------------

set :base_url, "https://www.terraform.io/"

activate :hashicorp do |h|
  h.version         = ENV["TERRAFORM_VERSION"]
  h.bintray_enabled = ENV["BINTRAY_ENABLED"]
  h.bintray_repo    = "mitchellh/terraform"
  h.bintray_user    = "mitchellh"
  h.bintray_key     = ENV["BINTRAY_API_KEY"]
  h.github_slug     = "hashicorp/terraform"
end

activate :relative_assets
set :relative_links, true
set :strip_index_file, false
