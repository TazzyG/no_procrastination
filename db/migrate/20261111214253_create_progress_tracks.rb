class CreateProgressTracks < ActiveRecord::Migration[8.1]
  def change
    create_table :progress_tracks do |t|
      t.string :title
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
