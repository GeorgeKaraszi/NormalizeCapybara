
# frozen_string_literal: true

module NormalizeCapybara
  module Queries
    module TitleQueryDecorator
      def initialize(expected_title, **options)
        expected_title.is_a?(Regexp) ? expected_title : Capybara::Helpers.normalize_whitespace(expected_title)
        super(expected_title, **options)
      end
    end
  end
end

Capybara::Queries::TitleQuery.prepend(NormalizeCapybara::Queries::TitleQueryDecorator)
