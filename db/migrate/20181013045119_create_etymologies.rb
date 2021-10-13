class CreateEtymologies < ActiveRecord::Migration[5.2]
  def change
    create_table :etymologies do |t|
      t.string :type_etymology
      t.string :language
      t.string :graeco_latin_etymology
      t.string :pattern
      t.string :meaning_etymology
      t.string :image_etymology
      t.string :etymos_version_etymology

      t.timestamps
    end
  end
end
