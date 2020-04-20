class Registration < ApplicationRecord
  belongs_to :event
  belongs_to :user

  HOW_HEARD_OPTIONS = [
    'Newsletter',
    'Blog Post',
    'Twitter',
    'Web Search',
    'Friend/Coworker',
    'Other'
  ]

  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }
  validates :how_heard,
            inclusion: { in: HOW_HEARD_OPTIONS }
end
