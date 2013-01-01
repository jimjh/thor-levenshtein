# ~*~ encoding: utf-8 ~*~
require 'levenshtein'

class Thor
  module Base

    module ClassMethods

      def handle_no_task_error(task, has_namespace = $thor_runner) #:nodoc:
        if has_namespace
          message = "Could not find task #{task.inspect} in #{namespace.inspect} namespace."
        else
          message = "Could not find task #{task.inspect}."
        end
        suggestion = find_suggestion task
        message += "\n\nDid you mean this?\n\t#{suggestion}" if suggestion
        raise UndefinedTaskError, message
      end

      protected

      # Finds a correct command with the shortest edit distance from +task+.
      def find_suggestion(task)
        all_tasks.keys.min_by { |key| ::Levenshtein.distance task, key }
      end

    end

  end
end
