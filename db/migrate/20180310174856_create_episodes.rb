class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :episode_number
      t.string :episode_name
      t.string :description
      t.string :download_url
      t.string :show_notes_url
      t.date :air_date
      t.string :youtube_id
      t.boolean :requires_review

      t.timestamps
    end
  end
end
