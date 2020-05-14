class User < ApplicationRecord
  has_many :social_distances, dependent: :nullify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  @country_ob = Country.new
  @countries = @country_ob.list_countries

  validates :user_zip_code, zipcode: { country_code_attribute:
  :country }, presence: true
  validates :country, presence: true, inclusion: { in: @countries }
end
