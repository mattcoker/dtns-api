class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :twitter_handle
      t.string :photo

      t.timestamps
    end
  end
end
