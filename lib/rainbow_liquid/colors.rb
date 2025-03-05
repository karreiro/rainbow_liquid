# frozen_string_literal: true

module RainbowLiquid
  class Colors
    class << self
      def load!
        (colors + effects).each do |color|
          tag_class = Class.new(Liquid::Block) do
            define_method(:render) do |context|
              content = super(context)
              Rainbow(content).public_send(color)
            end
          end

          env.register_tag(color, tag_class)
        end
      end

      private

      def env
        Liquid::Environment.default
      end

      def effects
        Rainbow::Presenter::TERM_EFFECTS.keys.map(&:to_s)
      end

      def colors
        Rainbow::X11ColorNames::NAMES.keys.map(&:to_s)
      end
    end
  end
end
