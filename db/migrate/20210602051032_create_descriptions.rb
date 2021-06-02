class CreateDescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :descriptions do |t|
      t.string :author
      t.belongs_to :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
