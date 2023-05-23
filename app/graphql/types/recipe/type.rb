# frozen_string_literal: true

module Types
  module Recipe 
    class Type < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :ingredients, String, null: false
      field :instruction, String, null: false
      field :image, String
      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    end
  end
end
