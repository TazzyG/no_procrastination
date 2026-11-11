class ProgressEntry < ApplicationRecord
    belongs_to :progress_track

  has_many_attached :images do |attachable|
    attachable.variant :thumb, resize_to_limit: [300, 300]
    attachable.variant :comparison, resize_to_limit: [1000, 1000]
  end

  validates :recorded_at, presence: true
  before_validation :set_default_recorded_at, on: :create

  private

  def set_default_recorded_at
    self.recorded_at ||= Time.current
  belongs_to :progress_track
end
