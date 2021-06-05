class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title, null: false
      t.string :note, null: false
      t.string :priority, null: false
      t.belongs_to :user
      t.timestamps
    end
  end
end
