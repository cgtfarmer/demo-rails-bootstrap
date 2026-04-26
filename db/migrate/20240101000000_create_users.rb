class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    enable_extension "pgcrypto"

    create_table :users, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.float :weight
      t.boolean :smoker

      t.timestamps
    end
  end
end
