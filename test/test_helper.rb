require 'rubygems'
require 'bundler/setup'
require 'capistrano/all'
require 'capistrano/figaro'
require 'capistrano/setup'
require 'minitest/autorun'
require 'rake'

require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

class UnitTest < Minitest::Test
  def setup
    set :figaro_path, 'config/application.yml'
  end

  def teardown
    ENV['foo'] = nil
  end
end
