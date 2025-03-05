# RainbowLiquid

Style command line tools with Liquid templates.

## Installation

Add this line to your application's Gemfile:

```bash
gem install rainbow_liquid
```

## Usage

Require the gem in your Ruby project:

```ruby
require 'rainbow_liquid'

render <<~MSG
  {% green %}Done!{% endgreen %}
  ===
  You've successfully installed RainbowLiquid!
MSG
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run the tests with:

```bash
bundle exec rake test
```

For an interactive Ruby prompt, you can also run:

```bash
bin/console
```

To install the gem locally, run:

```bash
bundle exec rake install
```

For releasing a new version, update the version number in `lib/rainbow_liquid/version.rb` and run:

```bash
bundle exec rake release
```

This process will create a git tag, push your commits and tag, and upload the gem to [RubyGems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/karreiro/rainbow_liquid](https://github.com/karreiro/rainbow_liquid). This project aims to be a safe, welcoming space for collaboration. Please review the [code of conduct](https://github.com/karreiro/rainbow_liquid/blob/main/CODE_OF_CONDUCT.md) before contributing.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RainbowLiquid project's codebases, issue trackers, chat rooms, and mailing lists is expected to adhere to the [code of conduct](https://github.com/karreiro/rainbow_liquid/blob/main/CODE_OF_CONDUCT.md).

This README updates the project description and usage instructions based on our discussion while keeping a concise, friendly tone.