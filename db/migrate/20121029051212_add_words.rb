class AddWords < ActiveRecord::Migration
  def up
    create_table :words do |t|
      t.string :kanji
      t.string :kana
      t.string :translation
      t.timestamps
    end
  end

  def down
    drop_table :words
  end
end
