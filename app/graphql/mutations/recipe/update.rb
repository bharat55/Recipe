
module Mutations
  module Recipe
    class Update < BaseMutation
      include Mixins::Nested

      argument :id, Integer, required: true
      argument :patch, Types::Recipe::Patch, required: true

      field :errors, [String], null: false
      field :recipe, Types::Recipe::Type, null: true

      def resolve(id:, patch:)
        recipe = ::Recipe.find(id)
        if recipe.update(patch.to_h)
          { recipe:, errors: [] }
        else
          { recipe: nil, errors: recipe.errors.full_messages }
        end
      end
    end
  end
end

