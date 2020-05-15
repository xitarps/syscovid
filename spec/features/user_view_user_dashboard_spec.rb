require 'rails_helper'

feature 'view user dashboard' do
  context 'user' do
    it 'successfully' do
      # Arrange
      user = FactoryBot.create(:user)
  
      # Act
      visit root_path
      click_on I18n.t(:already_registered).capitalize
      fill_in I18n.t(:email).capitalize, :with => user.email
      fill_in I18n.t(:password).capitalize, :with => user.password
      click_button I18n.t(:log_in).capitalize
      # Assert
      expect(page).to have_content(user.email)
      expect(page).to have_content(I18n.t(:social_distance_research).capitalize)
      expect(page).to have_content(I18n.t(:self_test_covid).capitalize)
      expect(page).to have_content(I18n.t(:how_is_my_vicinity).capitalize)
    end
    it 'failure - not logged in' do
      # Arrange
    
      # Act
      visit new_user_session_path
      click_button I18n.t(:log_in).capitalize

      # Assert
      expect(page).not_to have_content(I18n.t(:social_distance_research).capitalize)
      expect(page).not_to have_content(I18n.t(:self_test_covid).capitalize)
      expect(page).not_to have_content(I18n.t(:how_is_my_vicinity).capitalize)
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