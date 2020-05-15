class SelfTest < ApplicationRecord
  belongs_to :user

  @checked_message = " - #{I18n.t(:checked_message).capitalize}"
  @blank_message = " - #{I18n.t(:blank).capitalize}"

  validates :fever,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :shortness_of_breath,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :tiredness,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :cough,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :sore_throat,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :vomit,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :diarrhea,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :feel_fine,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :how_long_feeling,
  presence: true, format: { with: /\A[0-2]\z/,
                            message: @blank_message }
  validates :diabetes,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :high_pressure,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :asthma_bronchitis,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :heart_disease,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :chronic_respiratory_disease,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :chronic_kidney_disease,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :depression,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :immunosuppression,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :other_symptoms,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :no_additional_symptoms,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :clinic,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :depression,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :ambulatory,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :emergency_room,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :didnt_look_for_help,
  presence: true, format: { with: /\A[0-1]\z/,
                            message: @checked_message }
  validates :covid_test,
  presence: true, format: { with: /\A[0-2]\z/,
                            message: @blank_message }
end
