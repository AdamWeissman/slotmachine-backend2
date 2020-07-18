class Bank < ApplicationRecord
  def change
    create_table :banks do |t|
      t.integer :total

      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
