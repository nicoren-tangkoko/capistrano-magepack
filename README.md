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
## Workflow

The default capistrano workflow is used with the addition of theses tasks.

```ruby
after 'deploy:published', 'capistrano-magepack:bundle_js'
```
