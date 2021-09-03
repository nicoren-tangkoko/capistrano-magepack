# capistrano-theme-uploader

Capistrano tasks used to deploy theme.

## Install

```ruby
#add this line in your Gemfile
gem 'capistrano-magepack'
```

```ruby
#add this line in your Capfile
require 'capistrano/capistrano-magepack'
```
Then run 
```shell
bundle install 
#or bundle update
```
set following variables in your deploy.rb
These variables will be used to generate wp_config.php at first deployment.
And will install an empty wordpress
```ruby
set :themes_to_deploy, [
  'wp-content/themes/my-theme'
]

```

## Workflow

The default capistrano workflow is used with the addition of theses tasks.

```ruby
after 'deploy:published', 'capistrano-magepack:bundle_js'
```
