class CreateWordEtymologies < ActiveRecord::Migration[5.2]
  def change
    create_table :word_etymologies do |t|
      t.integer :etymology_order
      # Associations
      t.belongs_to :word, index: true, foreign_key: true
      t.belongs_to :etymology, index: true, foreign_key: true

      t.timestamps
    end
  end
end
