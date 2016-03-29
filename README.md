# compose_cucumber

[![Build Status](https://travis-ci.org/funkwerk/compose_cucumber.svg)](https://travis-ci.org/funkwerk/compose_cucumber)

Test docker-compose applications with cucumber

## Usage

in features/support/env.rb write

```ruby
require 'compose_cucumber'

```

This provides all the following step.

## Steps provided

### Given I started the application
### When I start the application
### When I stop the application
### When I scale the application with
### Then 1 service is available
### Then 2 services are available
### Then the logs for service service contain
### Then the following services are available
### Then exactly the following services are available

