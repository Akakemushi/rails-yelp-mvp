class AddNameToReview < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :name, :string
  end
end
