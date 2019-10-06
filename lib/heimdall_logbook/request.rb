module HeimdallLogbook
  class Request < ActiveRecord::Base
    self.table_name = 'heimdall_logbook_request'
  end
end
