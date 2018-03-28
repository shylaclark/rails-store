# Final Project: Ruby on Rails E-Commerce Site
## CSCI 4990 - Special Topics in Computer Science (Ruby on Rails) 

### Getting Started
Check your current Ruby version.
```
$ ruby -v
```
macOS ships with a system Ruby installed in `/usr/bin/ruby`. Don't use. Instead use [rbenv](https://github.com/rbenv/rbenv#installing-ruby-versions) (not rvm) to manage Ruby versions and gem bundles.

Install rbenv
```
# Install
$ brew install rbenv

# Add rbenv to bash
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ exec $SHELL -l
```
Install Ruby and gem bundler
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
Install Rails
```
# Install Rails
$ gem install rails --version 4.0.0 --no-ri --no-rdoc

# Verify install
$ rails -v
```

System dependencies

Database
```
# Configure Database
SQLite3

# Initialize Database
```

Services (job queues, cache servers, search engines, etc.)

### Testing
How to run the test suite

### Deployment Instructions


