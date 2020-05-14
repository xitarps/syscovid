require 'rails_helper'

feature 'create social distances' do
  context 'user' do
    describe 'successfully' do
      it 'if not logged in' do
        # Arrange
        user = FactoryBot.create(:user)
        # Act
        visit new_social_distance_path

        fill_in I18n.t(:how_many_residents).capitalize, with: 5
        select I18n.t(:others), from: I18n.t(:residence_type).capitalize
        fill_in I18n.t(:how_many_bedrooms).capitalize, with: 5
        fill_in I18n.t(:how_many_bathrooms).capitalize, with: 5
        fill_in I18n.t(:how_many_rooms).capitalize, with: 5
        fill_in I18n.t(:many_contacts).capitalize, with: 5
        check 'social_distance_been_outdoor'
        fill_in I18n.t(:many_times_outdoor).capitalize, with: 5
        check 'social_distance_supermarket'
        check 'social_distance_pharmacy'
        check 'social_distance_health_service'
        check 'social_distance_commerce'
        check 'social_distance_market'
        check 'social_distance_workplace'
        check 'social_distance_other_places'
        check 'social_distance_public_transportation'
        fill_in I18n.t(:many_transportations).capitalize, with: 5
        check 'social_distance_bus'
        check 'social_distance_subway'
        check 'social_distance_train'
        check 'social_distance_transport_apps'
        check 'social_distance_car'
        check 'social_distance_bicycle'
        check 'social_distance_taxi'
        check 'social_distance_other_transportations'

        click_on I18n.t(:save).capitalize

        # Assert
        expect(page).to have_content('form_ok')
        expect(page).to have_content('Cadastrar')
      end
      it 'if logged in' do
        # Arrange
        sign_in
        # Act
        visit new_social_distance_path

        fill_in I18n.t(:how_many_residents).capitalize, with: 5
        select I18n.t(:others), from: I18n.t(:residence_type).capitalize
        fill_in I18n.t(:how_many_bedrooms).capitalize, with: 5
        fill_in I18n.t(:how_many_bathrooms).capitalize, with: 5
        fill_in I18n.t(:how_many_rooms).capitalize, with: 5
        fill_in I18n.t(:many_contacts).capitalize, with: 5
        check 'social_distance_been_outdoor'
        fill_in I18n.t(:many_times_outdoor).capitalize, with: 5
        check 'social_distance_supermarket'
        check 'social_distance_pharmacy'
        check 'social_distance_health_service'
        check 'social_distance_commerce'
        check 'social_distance_market'
        check 'social_distance_workplace'
        check 'social_distance_other_places'
        check 'social_distance_public_transportation'
        fill_in I18n.t(:many_transportations).capitalize, with: 5
        check 'social_distance_bus'
        check 'social_distance_subway'
        check 'social_distance_train'
        check 'social_distance_transport_apps'
        check 'social_distance_car'
        check 'social_distance_bicycle'
        check 'social_distance_taxi'
        check 'social_distance_other_transportations'

        click_on I18n.t(:save).capitalize
        
        # Assert
        expect(page).to have_content('form_ok')
      end
    end

    describe 'error' do
      it 'if not logged in blank' do
        # Arrange
        user = FactoryBot.create(:user)
        # Act
        visit new_social_distance_path
        click_on I18n.t(:save).capitalize

        # Assert
        expect(page).not_to have_content('form_ok')
        expect(page).not_to have_content('Cadastrar')
        expect(page).to have_content(I18n.t(:blank))
      end
      it 'if logged in blank' do
        # Arrange
        sign_in
        # Act
        visit new_social_distance_path
        click_on I18n.t(:save).capitalize
        
        # Assert
        expect(page).not_to have_content('form_ok')
        expect(page).to have_content(I18n.t(:blank))
      end
    end
  end
end

def sign_in
  user = FactoryBot.create(:user)
  visit new_user_session_path
  fill_in 'E-mail', :with => user.email
  fill_in 'Senha', :with => user.password
  click_button 'Entrar'
end