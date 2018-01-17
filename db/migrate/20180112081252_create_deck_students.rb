class CreateDeckStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :deck_students do |t|
      t.references :student, foreign_key: true
      t.references :deck, foreign_key: true
      t.boolean :usefulness
      t.boolean :uselessness
      t.boolean :bookmark
      t.boolean :exclude

      t.timestamps
    end
  end
end
