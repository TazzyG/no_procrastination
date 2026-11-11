class ProgressTrack < ApplicationRecord
  has_many :progress_entries, -> { order(recorded_at: :asc) }, dependent: :destroy

  validates :title, presence: true
  validates :category, presence: true
end
