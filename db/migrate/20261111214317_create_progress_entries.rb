class CreateProgressEntries < ActiveRecord::Migration[8.1]
  def change
    create_table :progress_entries do |t|
      t.references :progress_track, null: false, foreign_key: true
      t.datetime :recorded_at
      t.text :notes
      t.json :metrics

      t.timestamps
    end
  end
end
