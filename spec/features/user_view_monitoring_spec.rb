require 'rails_helper'

feature 'view monitoring' do
  context 'user' do
    it 'successfully' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
    
      # Act
      visit monitoring_path(user.id)
      
      # Assert
      expect(page).to have_content(I18n.t(:monitoring_page_text).capitalize)
      
    end
    it 'failure - not logged in' do
      # Arrange
      
      # Act
      visit monitoring_path(1)
      
      # Assert
      expect(page).to have_content(I18n.t(:log_in).capitalize)
      expect(page).not_to have_content(I18n.t(:monitoring_page_text).capitalize)
      
    end
    xit 'green zip code' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
    
      # Act
      visit monitoring_path(user.id)
      
      # Assert
      expect(page).to have_content(I18n.t(:monitoring_page_text).capitalize)
      expect(page).not_to have_content(I18n.t(:monitoring_page_text).capitalize)
      expect(page).not_to have_content(I18n.t(:monitoring_page_text).capitalize)
    end
    xit 'yellow zip code' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
    
      # Act
      visit monitoring_path(user.id)
      
      # Assert
      expect(page).to have_content(I18n.t(:monitoring_page_text).capitalize)
      expect(page).not_to have_content(I18n.t(:monitoring_page_text).capitalize)
      expect(page).not_to have_content(I18n.t(:monitoring_page_text).capitalize)
    end
    xit 'red zip code' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
    
      # Act
      visit monitoring_path(user.id)
      
      # Assert
      expect(page).to have_content(I18n.t(:monitoring_page_text).capitalize)
      expect(page).not_to have_content(I18n.t(:monitoring_page_text).capitalize)
      expect(page).not_to have_content(I18n.t(:monitoring_page_text).capitalize)
    end
  end
end

def sign_in
  user = FactoryBot.create(:user)
  login_as user, scope: :user
end

def sign_in
  user = FactoryBot.create(:user)
  login_as user, scope: :user
end
