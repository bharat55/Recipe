module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :recipes, [Types::Recipe::Type], null: false, description: "Return a list of recipes"
  
    def recipes
      ::Recipe.all
    end

    def recipe(id:)
      ::Recipe.find_by(id)
    end
  end
end
