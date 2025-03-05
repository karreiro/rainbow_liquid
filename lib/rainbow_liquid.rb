# frozen_string_literal: true

require 'rainbow'
require 'liquid'

require_relative 'rainbow_liquid/version'
require_relative 'rainbow_liquid/colors'

module RainbowLiquid
  class Error < StandardError; end

  refine Kernel do
    def render(...)
      RainbowLiquid.render(...)
    end
  end

  def self.render(template, args = {})
    puts(Liquid::Template.parse(template).render(args))
  end
end

RainbowLiquid::Colors.load!
