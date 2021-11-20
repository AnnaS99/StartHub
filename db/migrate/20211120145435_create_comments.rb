class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :text
      t.string :name
      t.string :email
      t.string :like
      t.references :idea

      t.timestamps
    end
  end
end
