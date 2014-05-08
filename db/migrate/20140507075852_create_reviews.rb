class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :body
      t.integer :score
      #t.belongs_to :freelancer
      t.integer :freelancer_id

      t.timestamps
    end
  end
end
