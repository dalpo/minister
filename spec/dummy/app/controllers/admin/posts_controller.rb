module Admin
  class PostsController < Minister::MinisterController
    class Councillor < Councillor
      # ATTRIBUTE_TYPES
      # a hash that describes the type of each of the model's fields.
      ATTRIBUTES_MAPPING = {
        id: :integer,
        title: :string,
        abstract: :string,
        description: :text,
        published_at: :date,
        published: :boolean,
        author_id: :integer,
        created_at: :datetime,
        updated_at: :datetime,
      }.freeze

      # All available attributes
      # def attributes
      #   %i(
      #     id
      #     title
      #     abstract
      #     description
      #     published_at
      #     published
      #     author_id
      #     created_at
      #     updated_at
      #   )
      # end

      # def index_attributes
      #   %i(
      #     id
      #     title
      #     abstract
      #     description
      #     created_at
      #     updated_at
      #   )
      # end

      # def show_attributes
      #   attributes
      # end

      # def form_attributes
      #   %i(
      #     title
      #     abstract
      #     description
      #     published_at
      #     published
      #     author_id
      #   )
      # end

      # def create_attributes
      #   form_attributes
      # end

      # def update_attributes
      #   form_attributes
      # end
    end
  end
end
