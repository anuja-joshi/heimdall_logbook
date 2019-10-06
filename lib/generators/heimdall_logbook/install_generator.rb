require "rails/generators/active_record"

module HeimdallLogbook
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.join(__dir__, "templates")

      def copy_migration
        migration_template "migration.rb", "db/migrate/create_heimdall_logbook.rb", migration_version: migration_version
      end

      def self.next_migration_number(path)
        next_migration_number = current_migration_number(path) + 1
        ActiveRecord::Migration.next_migration_number(next_migration_number)
      end

      def migration_version
        "[#{ActiveRecord::VERSION::MAJOR}.#{ActiveRecord::VERSION::MINOR}]"
      end
    end
  end
end