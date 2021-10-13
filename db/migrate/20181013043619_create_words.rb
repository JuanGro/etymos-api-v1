class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :word_word
      t.string :meaning_word
      t.string :image_word
      t.string :etymos_version_word

      t.timestamps
    end
  end
end
