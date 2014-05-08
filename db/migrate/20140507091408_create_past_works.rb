class CreatePastWorks < ActiveRecord::Migration
  def change
    create_table :past_works do |t|
      t.string :name
      t.text :description
      t.belongs_to :freelancer
      
      t.timestamps
    end
  end
end
