# frozen_string_literal: true

module ARTest
  module SQLServer
    module SqlCounterSqlserver
      # Only return the log vs. log_all
      def capture_sql_ss
        ActiveRecord::SQLCounter.clear_log
        yield
        ActiveRecord::SQLCounter.log.dup
      end
    end
  end
end
