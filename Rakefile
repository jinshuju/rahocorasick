# frozen_string_literal: true

require 'rake/testtask'
require 'rake/extensiontask'

CROSS_PLATFORMS = %w[
  aarch64-linux
  arm64-darwin
  x86_64-darwin
  x86_64-linux
].freeze

spec = Bundler.load_gemspec('rahocorasick.gemspec')

Rake::ExtensionTask.new('rahocorasick', spec) do |c|
  c.lib_dir = 'lib/rahocorasick'
  c.source_pattern = '*.{rs,toml}'
  c.cross_compile = true
  c.cross_platform = CROSS_PLATFORMS
end

Rake::TestTask.new do |t|
  t.deps << :dev << :compile
  t.test_files = FileList['test/**/*_test.rb']
end

task :dev do
  ENV['RB_SYS_CARGO_PROFILE'] = 'dev'
end

task default: :test
