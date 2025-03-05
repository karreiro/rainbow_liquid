# RainbowLiquid

**RainbowLiquid** is a Ruby gem that leverages Liquid templates to neatly style and colorize your command line tools with a touch of rainbow.

## Installation

```ruby
gem 'rainbow_liquid'
```

## Usage

RainbowLiquid offers two simple approaches to render styled output.

### Example 1: Using refinements

```ruby
require 'rainbow_liquid'

using RainbowLiquid

render <<~MSG
  -------------------------------
  {% bright -%}
    {%- green -%}
      Welcome to 🌈 Rainbow Liquid 💧
    {%- endgreen -%}
  {%- endbright %}
  -------------------------------
MSG
```

### Example 2: Using the namespace

```ruby
require 'rainbow_liquid'

RainbowLiquid.render <<~MSG
  -------------------------------
  {% bright -%}
    {%- green -%}
      Welcome to 🌈 Rainbow Liquid 💧
    {%- endgreen -%}
  {%- endbright %}
  -------------------------------
MSG
```

## Development

To work on RainbowLiquid locally:

1. **Setup dependencies:**  
   Run the setup script:
   ```bash
   bin/setup
   ```

2. **Run tests:**  
   Execute:
   ```bash
   bundle exec rake test
   ```

3. **Interactive console:**  
   Launch an interactive Ruby prompt:
   ```bash
   bin/console
   ```

4. **Local gem installation:**  
   Install the gem on your system:
   ```bash
   bundle exec rake install
   ```

5. **Release a new version:**  
   Update the version number in `lib/rainbow_liquid/version.rb`, then run:
   ```bash
   bundle exec rake release
   ```
   This process creates a git tag, pushes your commits and tag, and uploads the gem to [RubyGems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/karreiro/rainbow_liquid](https://github.com/karreiro/rainbow_liquid). We appreciate collaboration in a respectful and pragmatic environment. Please review the [code of conduct](https://github.com/karreiro/rainbow_liquid/blob/main/CODE_OF_CONDUCT.md) before contributing.

## License

RainbowLiquid is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting with the RainbowLiquid project—whether via codebases, issue trackers, chat rooms, or mailing lists—is expected to adhere to the [code of conduct](https://github.com/karreiro/rainbow_liquid/blob/main/CODE_OF_CONDUCT.md).