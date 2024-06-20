class CreateTests2s < ActiveRecord::Migration[6.1]
  def change
    create_table :tests2s do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
