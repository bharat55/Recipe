module Types
  class MutationType < Types::BaseObject

    #Recipe
    field :create_recipe, mutation: Mutations::Recipe::Create
    field :delete_recipe, mutation: Mutations::Recipe::Delete
    field :update_recipe, mutation: Mutations::Recipe::Update
  end
end
