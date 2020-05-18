require 'rails_helper'

feature 'view results page' do
  context 'user' do
    it 'successfully' do
      # Arrange
      sign_in
      FactoryBot.create(:self_test, user_id: 1)

      # Act
      visit results_path
      
      # Assert
      expect(page).to have_content(I18n.t(:results_page).capitalize)
      expect(page).to have_content(I18n.t(:results_page_msg_html))
    end

    it 'failure' do
      # Arrange
      
      # Act
      visit results_path
      
      # Assert
      expect(page).not_to have_content(I18n.t(:results_page).capitalize)
      expect(page).not_to have_content(I18n.t(:results_page_msg_html))
    end
  end

  context 'fine' do
    it 'alert fine' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      FactoryBot.create(:self_test, user_id: 1, feel_fine: 1, result: 0)

      # Act
      visit results_path

      # Assert
      expect(page).to have_content(I18n.t(:alert_fine).capitalize)
    end

    it 'alert attention one check' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      FactoryBot.create(:self_test, user_id: 1, no_additional_symptoms: 1, result: 1)

      # Act
      visit results_path

      # Assert
      expect(page).to have_content(I18n.t(:alert_attention).capitalize)
    end
    
    it 'alert attention two check' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      FactoryBot.create(:self_test, user_id: 1, no_additional_symptoms: 1, didnt_look_for_help: 1, result: 1)

      # Act
      visit results_path

      # Assert
      expect(page).to have_content(I18n.t(:alert_attention).capitalize)
    end

    it 'alert attention three check' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      FactoryBot.create(:self_test, user_id: 1, no_additional_symptoms: 1, didnt_look_for_help: 1, covid_test: 2, result: 1)

      # Act
      visit results_path

      # Assert
      expect(page).to have_content(I18n.t(:alert_attention).capitalize)
    end

    it 'alert attention only two check' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      FactoryBot.create(:self_test, user_id: 1, didnt_look_for_help: 1, covid_test: 2, result: 1)

      # Act
      visit results_path

      # Assert
      expect(page).to have_content(I18n.t(:alert_attention).capitalize)
    end

    it 'alert attention only three check' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      FactoryBot.create(:self_test, user_id: 1, covid_test: 2, result: 1)

      # Act
      visit results_path

      # Assert
      expect(page).to have_content(I18n.t(:alert_attention).capitalize)
    end
  
    it 'alert_critical' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      FactoryBot.create(:self_test, user_id: 1, fever: 1, shortness_of_breath: 1, tiredness: 1, result: 2)

      # Act
      visit results_path

      # Assert
      expect(page).to have_content(I18n.t(:alert_critical).capitalize)
    end
  end
end

def sign_in
  user = FactoryBot.create(:user)
  login_as user, scope: :user
end
