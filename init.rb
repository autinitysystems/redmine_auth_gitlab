require 'redmine'
require_dependency 'redmine_auth_gitlab/hooks'

Redmine::Plugin.register :redmine_auth_gitlab do
  name 'GitLab Authentication'
  author 'Moritz Grosch, Dmitry Kovalenok, Pete Deffendol'
  description 'This is a plugin for authentication through GitLab'
  version '0.0.1'
  url 'https://github.com/pdeffendol/redmine_auth_gitlab'
  author_url 'https://github.com/pdeffendol'

  settings :default => {
    :client_id => ENV['REDMINE_GITLAB_CLIENT_ID'] || "",
    :client_secret => ENV['REDMINE_GITLAB_CLIENT_SECRET'] || "",
    :oauth_autentification => ENV['REDMINE_GITLAB_AUTH_ENABLED'] || false,
    :allowed_domains => ENV['REDMINE_GITLAB_ALLOWED_DOMAINS'] || "",
    :gitlab_url      => ENV['REDMINE_GITLAB_URL'] || ""
  }, :partial => 'settings/gitlab_settings'
end
