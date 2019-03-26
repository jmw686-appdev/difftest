class CreateGums < ActiveRecord::Migration[5.2]
  def change
    create_table :gums do |t|
      t.string :brand

      t.timestamps
    end
  end
end
