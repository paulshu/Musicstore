class AddThreeGradeToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :rating, :integer
    add_column :reviews, :look, :integer
    add_column :reviews, :price, :integer
  end
end
