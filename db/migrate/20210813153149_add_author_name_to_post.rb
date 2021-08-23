# frozen_string_literal: true

class AddAuthorNameToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :author_name, :string
  end
end
