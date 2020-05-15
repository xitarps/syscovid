require 'rails_helper'

feature 'view self tests' do
  context 'user' do
    it 'successfully' do
      # Arrange
      
    
      # Act
      visit new_self_test_path
      
      # Assert
      expect(page).to have_content(I18n.t(:any_symptoms).capitalize)
      expect(page).to have_content(I18n.t(:how_long_have_symptoms).capitalize)
      expect(page).to have_content(I18n.t(:additional_symptoms).capitalize)
      expect(page).to have_content(I18n.t(:did_covid_test).capitalize)
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
      expect(page).to have_content(I18n.t(:flu).capitalize)
      expect(page).to have_content(I18n.t(:covid).capitalize)
      expect(page).to have_content(I18n.t(:less_than_seven_days).capitalize)
      expect(page).to have_content(I18n.t(:more_than_seven_days).capitalize)
      expect(page).to have_content(I18n.t(:no_test_covid).capitalize)

      expect(page).to have_content(I18n.t(:save).capitalize)
    end
  end
end