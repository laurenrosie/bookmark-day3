require 'data_mapper'
require './bookmark_manager.rb'

namespace :database do
  desc "Auto upgrade test!"
  task :auto_upgrade_test do
    DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
    DataMapper.finalize
    DataMapper.auto_upgrade!
    p "Auto-upgraded (non-distructive)."
  end

  desc "Auto migrate test!"
  task :auto_migrate_test do
    DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
    DataMapper.finalize
    DataMapper.auto_migrate!
    p "Auto-migrated (distructive)."
  end
  desc "Auto upgrade development!"
  task :auto_upgrade_development  do
    DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
    DataMapper.finalize
    DataMapper.auto_upgrade!
    p "Auto-upgraded (non-distructive)."
  end

  desc "Auto migrate development!"
  task :auto_migrate_development do
    DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
    DataMapper.finalize
    DataMapper.auto_migrate!
    p "Auto-migrated (distructive)."
  end



  desc "Auto upgrade production!"
  task :auto_upgrade_production do
    DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
    DataMapper.finalize
    DataMapper.auto_upgrade!
    p "Auto-upgraded (non-distructive)."
  end

  desc "Auto migrate production!"
  task :auto_migrate_production do
    DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
    DataMapper.finalize
    DataMapper.auto_migrate!
    p "Auto-migrated (distructive)."
  end

end
