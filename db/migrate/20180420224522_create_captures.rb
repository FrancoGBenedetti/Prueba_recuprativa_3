class CreateCaptures < ActiveRecord::Migration[5.1]
  def change
    create_table :captures do |t|
      t.references :user, foreign_key: true
      t.references :pokemon, foreign_key: true
      t.integer :leve

      t.timestamps
    end
  end
end
