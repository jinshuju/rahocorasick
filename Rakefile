# frozen_string_literal: true

require 'rake/testtask'
require 'rake/extensiontask'

task default: :test

Rake::ExtensionTask.new('rahocorasick') do |c|
  c.lib_dir = 'lib/rahocorasick'
end

task :dev do
  ENV['RB_SYS_CARGO_PROFILE'] = 'dev'
end
