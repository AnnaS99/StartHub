class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :sub
      t.text :description
      t.string :target
      t.string :b2bc
      t.string :help
      t.string :keywords


      t.timestamps
    end
  end
end
