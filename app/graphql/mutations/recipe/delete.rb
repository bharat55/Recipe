
module Mutations
  module Recipe
    class Delete < BaseMutation
      include Mixins::Nested

      argument :id, Integer, required: true

      field :errors, [String], null: false
      field :recipe, Types::Recipe::Type, null: false

      def resolve(id:)
        recipe = ::Recipe.find(id)
        if recipe.destroy
          { recipe:, errors: [] }
        else
          { recipe: nil, errors: recipe.errors.full_messages }
        end
      end
    end
  end
end

