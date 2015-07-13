require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'rubygems'
require 'bundler/setup'
require 'capistrano/all'
require 'capistrano/figaro'
require 'capistrano/setup'
require 'minitest/autorun'
require 'rake'

class UnitTest < Minitest::Test
  def setup
    set :figaro_path, 'config/application.yml'
  end

  def teardown
    ENV['foo'] = nil
  end
end
