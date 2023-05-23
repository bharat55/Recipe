# frozen_string_literal: true

module Mutations
  module Mixins
    module Nested
      extend ActiveSupport::Concern

      class_methods do
        def default_graphql_name
          @default_graphql_name ||= name.split('::').drop(1).join
        end
      end
    end
  end
end
