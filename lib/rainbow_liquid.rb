# frozen_string_literal: true

require_relative 'rainbow_liquid/version'

module RainbowLiquid
  class Error < StandardError; end
end

def format(msg)
  puts(msg)
end
