class SocialDistance < ApplicationRecord
  belongs_to :user, optional: true

  @checked_message = " - #{I18n.t(:checked_message).capitalize}"
  @one_to_99_message = " - #{I18n.t(:one_to_99_message).capitalize}"
  @zero_to_99_message = " - #{I18n.t(:zero_to_99_message).capitalize}"

  validates :social_distance_zip_code, presence: true

  validates :how_many_residents,
  presence: true, format: { with: /\A[1-9][0-9]?\z/,
                            message: @one_to_99_message }
  validates :residence_type,
  presence: true, format: { with: /\A[0-2]\z/,
                            message: @checked_message }
  validates :bedrooms,
  presence: true, format: { with: /\A[1-9][0-9]?\z/,
                            message: @one_to_99_message }
  validates :bathrooms,
  presence: true, format: { with: /\A[1-9][0-9]?\z/,
                            message: @one_to_99_message }
  validates :rooms,
  presence: true, format: { with: /\A[1-9][0-9]?\z/,
                            message: @one_to_99_message }
  validates :many_contacts,
  presence: true, format: { with: /\A[0-9][0-9]?\z/,
                            message: @zero_to_99_message }
  validates :been_outdoor,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :many_times_outdoor,
  presence: true, format: { with: /\A[0-9][0-9]?\z/,
                            message: @zero_to_99_message }
  validates :supermarket,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :pharmacy,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :health_service,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :commerce,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :market,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :workplace,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :other_places,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :public_transportation,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :many_transportations,
  presence: true, format: { with: /\A[0-9][0-9]?\z/,
                            message: @zero_to_99_message }
  validates :bus,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :subway, presence: true, format: { with: /\A[0-1]\z/,
                                               message: @checked_message }
  validates :train, presence: true, format: { with: /\A[0-1]\z/,
                                              message: @checked_message }
  validates :transport_apps,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :car, presence: true, format: { with: /\A[0-1]\z/,
                                            message: @checked_message }
  validates :bicycle, presence: true, format: { with: /\A[0-1]\z/,
                                                message: @checked_message }
  validates :taxi, presence: true, format: { with: /\A[0-1]\z/,
                                             message: @checked_message }
  validates :other_transportations,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
end
