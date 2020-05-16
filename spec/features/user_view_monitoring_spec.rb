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
    it 'green zip code' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      10.times {FactoryBot.create(:self_test, user_id: 1, result: 2)}
    
      # Act
      visit monitoring_path(user.id)
      
      # Assert
      expect(page).to have_content(I18n.t(:green_zip_code).capitalize)
    end
    it 'yellow zip code' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      15.times {FactoryBot.create(:self_test, user_id: 1, result: 2)}
    
      # Act
      visit monitoring_path(user.id)
      
      # Assert
      expect(page).to have_content(I18n.t(:yellow_zip_code).capitalize)
    end
    it 'red zip code' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      31.times {FactoryBot.create(:self_test, user_id: 1, result: 2)}
    
      # Act
      visit monitoring_path(user.id)
      
      # Assert
      expect(page).to have_content(I18n.t(:red_zip_code).capitalize)
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
