class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.string :phrase
      t.string :etymos_version_test
      # Associations
      t.belongs_to :word, index: true, foreign_key: true

      t.timestamps
    end
  end
end
