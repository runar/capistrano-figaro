# capistrano-figaro

Capistrano plugin that integrates with Figaro, loading your configuration for
use during deployment.

[![Gem Version](https://img.shields.io/gem/v/capistrano-figaro.svg?style=flat-square)](http://badge.fury.io/rb/capistrano-figaro)
[![Build Status](https://img.shields.io/travis/runar/capistrano-figaro/master.svg?style=flat-square)](https://travis-ci.org/runar/capistrano-figaro)
[![Code Climate](https://img.shields.io/codeclimate/github/runar/capistrano-figaro.svg?style=flat-square)](https://codeclimate.com/github/runar/capistrano-figaro)
[![Coverage Status](https://img.shields.io/codeclimate/coverage/github/runar/capistrano-figaro.svg?style=flat-square)](https://codeclimate.com/github/runar/capistrano-figaro/coverage)
[![Dependency Status](https://img.shields.io/gemnasium/runar/capistrano-figaro.svg?style=flat-square)](https://gemnasium.com/runar/capistrano-figaro)

## Installation

Add the gem to your `Gemfile` and run `bundle install`:

```ruby
group :development do
  gem 'capistrano-figaro'
end
```

Then add the gem to your `Capfile`:

```ruby
require 'capistrano/figaro'
```

## Usage

There is nothing else you need to do. All your configuration values from
`application.yml` will be automatically loaded as environment variables when
you invoke a Capistrano task.

Your configuration values will be available as either `ENV['setting']` or
`Figaro.env.setting`:

```ruby
set :some_option, ENV['some_option']
set :other_option, Figaro.env.other_option
```

## Configuring

The default location of the configuration file used by Figaro is
`config/application.yml`. You may change this location by setting the
`:figaro_path` variable:

```ruby
set :figaro_path, 'path/to/file.yml'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

The capistrano-figaro plugin is free software released under the MIT License.
See [LICENSE](https://github.com/runar/capistrano-figaro/blob/master/LICENSE)
for details.
