# Cats
[![Gem Version](https://badge.fury.io/rb/cats.png)](http://badge.fury.io/rb/cats)
[![Build Status](https://secure.travis-ci.org/nicolasmccurdy/cats.png?branch=master)](http://travis-ci.org/nicolasmccurdy/cats)
[![Dependency Status](https://gemnasium.com/nicolasmccurdy/cats.png)](https://gemnasium.com/nicolasmccurdy/cats)
[![Code Climate](https://codeclimate.com/github/thenickperson/cats.png)](https://codeclimate.com/github/thenickperson/cats)

A library/tool that does a small number of cat-related tasks. Cats currently
acts as a command line client and library for receiving cat facts.

## [Documentation](http://rubydoc.info/github/nicolasmccurdy/cats/frames)

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'cats'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cats

## Usage

### As a command line tool
```shell
$ cats fact
A cat can travel at a top speed of approximately 31 mph (49 km) over a short
distance.
```

### As a library
```ruby
require 'cats'

puts Cats.fact
```

## Credits
- List of cat facts: [CatFactsApi](https://github.com/pieces029/CatFactsApi)
  (MIT License)

## Development
After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/nickmccurdy/cats.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
