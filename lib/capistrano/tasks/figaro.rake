require 'figaro'

namespace :load do
  task :defaults do
    set :figaro_path, -> { 'config/application.yml' }
  end
end

namespace :figaro do
  task :load do
    unless File.exists?(fetch(:figaro_path))
      raise LoadError, 'Configuration file not found!'
    end

    Figaro.application = Figaro::Application.new(path: fetch(:figaro_path))
    Figaro.load
  end
end

after 'load:defaults', 'figaro:load'
