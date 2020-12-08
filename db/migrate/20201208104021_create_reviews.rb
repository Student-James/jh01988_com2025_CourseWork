class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.belongs_to :album, foreign_key: true
      t.string :reviewtitle, null: false
      t.text :reviewbody, null: false

      t.timestamps
    end
  end
end
