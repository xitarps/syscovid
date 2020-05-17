class User < ApplicationRecord
  has_many :social_distances, dependent: :nullify
  has_many :self_tests, dependent: :nullify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  @country_ob = Country.new
  @countries = @country_ob.list_countries

  @name_ivalid = " #{I18n.t(:name_ivalid).capitalize}"
  @one_to_99_message = " #{I18n.t(:one_to_99_message).capitalize}"
  @gender_invalid = " #{I18n.t(:gender_invalid).capitalize}"

  validates :user_zip_code, zipcode: { country_code_attribute:
  :country }, presence: true
  validates :country, presence: true, inclusion: { in: @countries }

  validates :name, format: { with: /\A[a-zA-Z]?[a-zA-Z]{0,130}\z/,
  message: @name_ivalid }

  validates :age, presence: true, format: { with: /\A[1-9]?[1-9]\z/,
  message: @one_to_99_message }

  validates :gender, presence: true, format: { with: /\A[0-1]\z/,
  message: @gender_invalid }
end
