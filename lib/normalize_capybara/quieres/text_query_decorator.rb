
# frozen_string_literal: true

module NormalizeCapybara
  module Queries
    module TextQueryDecorator
      def initialize(type = nil, expected_text, session_options:, **options) # rubocop:disable Style/OptionalArguments
        expected_text =
          if expected_text.is_a?(Regexp)
            expected_text
          else
            Capybara::Helpers.normalize_whitespace(expected_text.to_s)
          end

        super(type, expected_text, session_options: session_options, **options)
      end

      def text(node, query_type)
        Capybara::Helpers.normalize_whitespace(super)
      end
    end
  end
end

Capybara::Queries::TextQuery.prepend(NormalizeCapybara::Queries::TextQueryDecorator)
