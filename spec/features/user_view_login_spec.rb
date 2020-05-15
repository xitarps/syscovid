require 'rails_helper'

feature 'view login page' do
  context 'user' do
    it 'successfully' do
      # Arrange
    
      # Act
      visit root_path
      click_on I18n.t(:already_registered).capitalize

      # Assert
      expect(page).to have_content(I18n.t(:email).capitalize)
      expect(page).to have_content(I18n.t(:password).capitalize)
      expect(page).to have_content(I18n.t(:log_in).capitalize)
    end
    it 'failure - already logged in' do
      # Arrange
      sign_in
      # Act
      visit root_path
      click_on I18n.t(:already_registered).capitalize

      # Assert
      expect(page).not_to have_content(I18n.t(:email).capitalize)
      expect(page).not_to have_content(I18n.t(:password).capitalize)
      expect(page).not_to have_content(I18n.t(:log_in).capitalize)
    end
  end
end

def sign_in
  user = FactoryBot.create(:user)
  visit new_user_session_path
  fill_in I18n.t(:email).capitalize, :with => user.email
  fill_in I18n.t(:password).capitalize, :with => user.password
  click_button I18n.t(:log_in).capitalize
end