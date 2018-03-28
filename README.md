# Final Project: Ruby on Rails E-Commerce Site
### CSCI 4990 - Special Topics in Computer Science (Ruby on Rails) 

### Getting Started
Check to make sure you're not running Ruby from /usr/bin  `$ which ruby`
Get version info  `$ ruby -v`
macOS ships with a system Ruby installed in `/usr/bin/ruby`. Don't use. Instead use [rbenv](https://github.com/rbenv/rbenv#installing-ruby-versions) (not rvm) to manage Ruby versions and gem bundles.

#### Install rbenv
```
# Install
$ brew install rbenv

# Add rbenv to bash
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ exec $SHELL -l
```
#### Install Ruby and gem bundler
```
# List all Ruby versions available for install
$ rbenv install -l

# Install Ruby
$ rbenv install 2.0.0-p247

# Check target version
$ rbenv version

# Switch global version
$ rbenv global 2.0.0-p247

# Switch local version (project-specific, usually for legacy code)
$ rbenv local 2.0.0-p247

# Install gems
$ gem install bundler
```
#### Install Rails
```
# Install Rails
$ gem install rails --version 4.0.0 --no-ri --no-rdoc

# Verify install
$ rails -v
```
To switch version of Rails used in project, change Rails number in Gemfile in root folder of application and run `$ bundle install`.

#### Database
```
# Install global postgresql
$ brew install postgresql

# Install Postgres adapter gem
$ gem install pg -v 0.18.4

# Add to Gemfile
gem 'pg', '~> 0.18.4'

# Resolve dependencies
$ bundle install
```
#### Production Testing
```
$ rake db:setup
$ rails server

```
#### Troubleshooting
```
# Run this before rake db:setup
$ brew services start postgresql
```

