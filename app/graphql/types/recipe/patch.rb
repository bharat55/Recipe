# frozen_string_literal: true

module Types
  module Recipe
    class Patch < BaseInputObject
      include Mixins::Nested

      argument :name, String, required: false
      argument :image, String, required: false
      argument :instruction, String, required: false
      argument :ingredients, String, required: false
    end
  end
end
