
module Mutations
  module Recipe
    class Create < BaseMutation
      include Mixins::Nested

      argument :name, String, required: true
      argument :image, String, required: false
      argument :ingredients, String, required: true
      argument :instruction, String, required: true

      field :errors, [String], null: false
      field :recipe, Types::Recipe::Type, null: true

      def resolve(**kwargs)
        recipe = ::Recipe.new(**kwargs)
        if recipe.save
          { recipe:, errors: [] }
        else
          { recipe: nil, errors: recipe.errors.full_messages }
        end
      end
    end
  end
end

