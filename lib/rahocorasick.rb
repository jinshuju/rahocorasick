# frozen_string_literal: true

begin
  # load the precompiled extension file
  ruby_version = /(\d+\.\d+)/.match(::RUBY_VERSION)
  require_relative "rahocorasick/#{ruby_version}/rahocorasick"
rescue LoadError
  require 'rahocorasick/rahocorasick'
end
