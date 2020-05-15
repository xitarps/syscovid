require 'rails_helper'

feature 'view self tests' do
  context 'user' do
    it 'successfully' do
      # Arrange
      sign_in
    
      # Act
      visit new_self_test_path
      
      # Assert
      expect(page).to have_content(I18n.t(:any_symptoms).capitalize)
      expect(page).to have_content(I18n.t(:how_long_have_symptoms).capitalize)
      expect(page).to have_content(I18n.t(:additional_symptoms).capitalize)
      expect(page).to have_content(I18n.t(:covid_test).capitalize)
      expect(page).to have_content(I18n.t(:fever).capitalize)
      expect(page).to have_content(I18n.t(:shortness_of_breath).capitalize)
      expect(page).to have_content(I18n.t(:tiredness).capitalize)
      expect(page).to have_content(I18n.t(:cough).capitalize)
      expect(page).to have_content(I18n.t(:sore_throat).capitalize)
      expect(page).to have_content(I18n.t(:vomit).capitalize)
      expect(page).to have_content(I18n.t(:diarrhea).capitalize)
      expect(page).to have_content(I18n.t(:feel_fine).capitalize)
      expect(page).to have_content(I18n.t(:how_long_feeling).capitalize)
      expect(page).to have_content(I18n.t(:first_week_range).capitalize)
      expect(page).to have_content(I18n.t(:second_week_range).capitalize)
      expect(page).to have_content(I18n.t(:more_two_weeks_range).capitalize)
      expect(page).to have_content(I18n.t(:diabetes).capitalize)
      expect(page).to have_content(I18n.t(:high_pressure).capitalize)
      expect(page).to have_content(I18n.t(:asthma_bronchitis).capitalize)
      expect(page).to have_content(I18n.t(:heart_disease).capitalize)
      expect(page).to have_content(I18n.t(:chronic_respiratory_disease).capitalize)
      expect(page).to have_content(I18n.t(:chronic_kidney_disease).capitalize)
      expect(page).to have_content(I18n.t(:depression).capitalize)
      expect(page).to have_content(I18n.t(:immunosuppression).capitalize)
      expect(page).to have_content(I18n.t(:other_symptoms).capitalize)
      expect(page).to have_content(I18n.t(:no_additional_symptoms).capitalize)
      expect(page).to have_content(I18n.t(:health_service_unit).capitalize)
      expect(page).to have_content(I18n.t(:clinic).capitalize)
      expect(page).to have_content(I18n.t(:ambulatory).capitalize)
      expect(page).to have_content(I18n.t(:emergency_room).capitalize)
      expect(page).to have_content(I18n.t(:didnt_look_for_help).capitalize)
      expect(page).to have_content(I18n.t(:covid_test).capitalize)
      expect(page).to have_content(I18n.t(:less_than_seven_days).capitalize)
      expect(page).to have_content(I18n.t(:more_than_seven_days).capitalize)
      expect(page).to have_content(I18n.t(:no_test_covid).capitalize)
    end
    it 'not logged' do
      # Arrange
    
      # Act
      visit new_self_test_path
      
      # Assert
      expect(page).not_to have_content(I18n.t(:any_symptoms).capitalize)
      expect(page).not_to have_content(I18n.t(:how_long_have_symptoms).capitalize)
      expect(page).not_to have_content(I18n.t(:additional_symptoms).capitalize)
      expect(page).not_to have_content(I18n.t(:covid_test).capitalize)
      expect(page).not_to have_content(I18n.t(:fever).capitalize)
      expect(page).not_to have_content(I18n.t(:shortness_of_breath).capitalize)
      expect(page).not_to have_content(I18n.t(:tiredness).capitalize)
      expect(page).not_to have_content(I18n.t(:cough).capitalize)
      expect(page).not_to have_content(I18n.t(:sore_throat).capitalize)
      expect(page).not_to have_content(I18n.t(:vomit).capitalize)
      expect(page).not_to have_content(I18n.t(:diarrhea).capitalize)
      expect(page).not_to have_content(I18n.t(:feel_fine).capitalize)
      expect(page).not_to have_content(I18n.t(:how_long_feeling).capitalize)
      expect(page).not_to have_content(I18n.t(:first_week_range).capitalize)
      expect(page).not_to have_content(I18n.t(:second_week_range).capitalize)
      expect(page).not_to have_content(I18n.t(:more_two_weeks_range).capitalize)
      expect(page).not_to have_content(I18n.t(:diabetes).capitalize)
      expect(page).not_to have_content(I18n.t(:high_pressure).capitalize)
      expect(page).not_to have_content(I18n.t(:asthma_bronchitis).capitalize)
      expect(page).not_to have_content(I18n.t(:heart_disease).capitalize)
      expect(page).not_to have_content(I18n.t(:chronic_respiratory_disease).capitalize)
      expect(page).not_to have_content(I18n.t(:chronic_kidney_disease).capitalize)
      expect(page).not_to have_content(I18n.t(:depression).capitalize)
      expect(page).not_to have_content(I18n.t(:immunosuppression).capitalize)
      expect(page).not_to have_content(I18n.t(:other_symptoms).capitalize)
      expect(page).not_to have_content(I18n.t(:no_additional_symptoms).capitalize)
      expect(page).not_to have_content(I18n.t(:health_service_unit).capitalize)
      expect(page).not_to have_content(I18n.t(:clinic).capitalize)
      expect(page).not_to have_content(I18n.t(:ambulatory).capitalize)
      expect(page).not_to have_content(I18n.t(:emergency_room).capitalize)
      expect(page).not_to have_content(I18n.t(:didnt_look_for_help).capitalize)
      expect(page).not_to have_content(I18n.t(:covid_test).capitalize)
      expect(page).not_to have_content(I18n.t(:less_than_seven_days).capitalize)
      expect(page).not_to have_content(I18n.t(:more_than_seven_days).capitalize)
      expect(page).not_to have_content(I18n.t(:no_test_covid).capitalize)
    end
  end
end

RSpec.describe "view self tests", type: :request do
  context 'user' do
    it 'blank' do
      # Arrange
      user = FactoryBot.create(:user)
      login_as user, scope: :user
      # Act
      post self_tests_path, params: { self_test: {fever: nil, shortness_of_breath: nil, tiredness: nil, cough: nil, sore_throat: nil, vomit: nil, diarrhea: nil, feel_fine: nil, how_long_feeling: nil, diabetes: nil, high_pressure: nil, asthma_bronchitis: nil, heart_disease: nil, chronic_respiratory_disease: nil, chronic_kidney_disease: nil, depression: nil, immunosuppression: nil, other_symptoms: nil, no_additional_symptoms: nil, health_service_unit: nil, clinic: nil, ambulatory: nil, emergency_room: nil, didnt_look_for_help: nil, covid_test: nil, user_id: 1} }
      
      # Assert
      expect(response.body).to include(I18n.t(:blank))
    end
  end
end

def sign_in
  user = FactoryBot.create(:user)
  login_as user, scope: :user
end
