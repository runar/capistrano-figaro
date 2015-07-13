require_relative 'test_helper'

class FigaroTest < UnitTest
  def test_that_default_path_is_set
    assert_equal 'config/application.yml', fetch(:figaro_path)
  end

  def test_that_figaro_loads_after_defaults
    Rake::Task['load:defaults'].invoke
    assert_equal 'bar', ENV['foo']
  end

  def test_that_configuration_loads_as_env_variable
    Rake::Task['figaro:load'].execute
    assert_equal 'bar', ENV['foo']
  end

  def test_that_configuration_loads_as_figaro_method
    Rake::Task['figaro:load'].execute
    assert_equal 'bar', Figaro.env.foo
  end

  def test_that_non_existent_configuration_file_raises_error
    set :figaro_path, 'does/not/exist.yml'
    assert_raises LoadError do
      Rake::Task['figaro:load'].execute
    end
  end
end
