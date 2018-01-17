class CreateHashtags < ActiveRecord::Migration[5.0]
  def change
    create_table :hashtags do |t|
      t.string :title
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
