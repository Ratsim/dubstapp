class CreateDecades < ActiveRecord::Migration[5.2]
  def change
    create_table :decades do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :song

      t.timestamps
    end
  end
end
