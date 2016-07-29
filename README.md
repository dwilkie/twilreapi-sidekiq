# Twilreapi::Sidekiq

[![Build Status](https://travis-ci.org/dwilkie/twilreapi-sidekiq.svg?branch=master)](https://travis-ci.org/dwilkie/twilreapi-sidekiq)

A sidekiq worker for [Twilreapi](https://github.com/dwilkie/twilreapi).

## Installation

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Configuration

Configuration is done using Environment Variables. See [.env](https://github.com/dwilkie/twilreapi-sidekiq/blob/master/.env)

## Running Locally

Start the sidekiq worker process using foreman. Note this will read the environment variables from See [.env](https://github.com/dwilkie/twilreapi-sidekiq/blob/master/.env)

```
$ bundle exec foreman run worker
```

## Deployment

To get started quickly we recommend deploying to Heroku.

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dwilkie/twilreapi-sidekiq.

## License

The software is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

