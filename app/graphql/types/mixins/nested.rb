
module Types
  module Mixins
    module Nested
      extend ActiveSupport::Concern

      class_methods do
        def default_graphql_name
          @default_graphql_name ||= name.split('::').grep_v(/\ATypes?\z/).join
        end
      end
    end
  end
end
