# Capistrano::Taillog

**Note: this plugin works only with Capistrano 3.**

### About

Capistrano Taillog makes tailing logs easier. run `cap <stage> log:tail` to tail logs from remote servers.

### Installation

Put the following in your application's `Gemfile`:

```ruby
group :development do
  gem 'capistrano', '~> 3.2.0'
  gem 'capistrano-taillog'
end
```

Then:

```
$ bundle install
```

### Usage

Put the following in your application's `Capfile`:

```ruby
require 'capistrano/taillog'
```

Then:

```
cap <stage> logs:tail
```

### Configurations

Please see: [defaults.rb](https://github.com/aq1018/capistrano-taillog/blob/master/lib/capistrano/taillog/defaults.rb)


### Contributing

1. Fork it ( https://github.com/[my-github-username]/capistrano-taillog/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
