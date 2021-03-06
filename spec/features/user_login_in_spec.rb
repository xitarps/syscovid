require 'rails_helper'

feature 'log in' do
  context 'user' do
    it 'successfully' do
      # Arrange
    
      # Act
      user = FactoryBot.create(:user)
      visit new_user_session_path
      fill_in I18n.t(:email).capitalize, :with => user.email
      fill_in I18n.t(:password).capitalize, :with => user.password
      click_button I18n.t(:log_in).capitalize

      # Assert
      expect(page).to have_content(user.email)
      expect(page).not_to have_content(I18n.t(:email).capitalize)
      expect(page).not_to have_content(I18n.t(:password).capitalize)
      expect(page).not_to have_content(I18n.t(:log_in).capitalize)
    end
    it 'failure - invalid' do
      # Arrange

      # Act
      user = FactoryBot.create(:user)
      visit new_user_session_path
      fill_in I18n.t(:email).capitalize, :with => user.email
      fill_in I18n.t(:password).capitalize, :with => user.password
      user.delete
      click_button I18n.t(:log_in).capitalize

      # Assert
      expect(page).to have_content(I18n.t(:email).capitalize)
      expect(page).to have_content(I18n.t(:password).capitalize)
      expect(page).to have_content(I18n.t(:log_in).capitalize)
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