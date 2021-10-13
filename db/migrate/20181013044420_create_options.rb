class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :word_option
      t.boolean :correct
      # Associations
      t.belongs_to :test, index: true, foreign_key: true

      t.timestamps
    end
  end
end
