class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.belongs_to :album, foreign_key: true, null: false, index: true
      t.string :title, null: false

      t.timestamps
    end
  end
end
