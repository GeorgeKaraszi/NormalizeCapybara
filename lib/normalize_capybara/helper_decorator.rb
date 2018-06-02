# frozen_string_literal: true

require "capybara/helpers"

Capybara::Helpers.instance_eval do
  extend self

  def normalize_whitespace(text)
    text.to_s.gsub(/[[:space:]]+/, " ").strip
  end

  def to_regexp(text, exact: false, all_whitespace: false, options: nil)
    return super if text.is_a?(Regexp)

    text = normalize_whitespace(text)
    super(text, exact: false, all_whitespace: false, options: nil)
  end
end
