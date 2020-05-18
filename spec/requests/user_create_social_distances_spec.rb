require 'rails_helper'

RSpec.describe "usert", type: :request do
  context 'create social distances - request' do
    it 'successfully if not logged in'  do
      # Arrange
      user = FactoryBot.create(:user)

      # Act
      
      params = {}
      params[:social_distance]={}
      params[:social_distance][:how_many_residents] = '5'
      params[:social_distance][:residence_type] = '2'
      params[:social_distance][:bedrooms] = '5'
      params[:social_distance][:bathrooms] = '5'
      params[:social_distance][:rooms] = '5'
      params[:social_distance][:many_contacts] = '5'
      params[:social_distance][:been_outdoor] = '1'
      params[:social_distance][:many_times_outdoor] = '5'
      params[:social_distance][:supermarket] = '1'
      params[:social_distance][:pharmacy] = '1'
      params[:social_distance][:health_service] = '1'
      params[:social_distance][:commerce] = '0'
      params[:social_distance][:market] = '0'
      params[:social_distance][:workplace] = '0'
      params[:social_distance][:other_places] = '0'
      params[:social_distance][:public_transportation] = '0'
      params[:social_distance][:many_transportations] = '6'
      params[:social_distance][:bus] = '1'
      params[:social_distance][:subway] = '1'
      params[:social_distance][:train] = '1'
      params[:social_distance][:transport_apps] = '1'
      params[:social_distance][:car] = '1'
      params[:social_distance][:bicycle] = '1'
      params[:social_distance][:taxi] = '0'
      params[:social_distance][:other_transportations] = '0'
      
      post social_distances_path, params: params

      # Assert
      expect(response.body).to include('/users/sign_up')
    end
    it 'successfully if logged in'  do
      # Arrange
      user = FactoryBot.create(:user)
      log_in
      # Act
      
      params = {}
      params[:social_distance]={}
      params[:social_distance][:how_many_residents] = '5'
      params[:social_distance][:residence_type] = '2'
      params[:social_distance][:bedrooms] = '5'
      params[:social_distance][:bathrooms] = '5'
      params[:social_distance][:rooms] = '5'
      params[:social_distance][:many_contacts] = '5'
      params[:social_distance][:been_outdoor] = '1'
      params[:social_distance][:many_times_outdoor] = '5'
      params[:social_distance][:supermarket] = '1'
      params[:social_distance][:pharmacy] = '1'
      params[:social_distance][:health_service] = '1'
      params[:social_distance][:commerce] = '0'
      params[:social_distance][:market] = '0'
      params[:social_distance][:workplace] = '0'
      params[:social_distance][:other_places] = '0'
      params[:social_distance][:public_transportation] = '0'
      params[:social_distance][:many_transportations] = '6'
      params[:social_distance][:bus] = '1'
      params[:social_distance][:subway] = '1'
      params[:social_distance][:train] = '1'
      params[:social_distance][:transport_apps] = '1'
      params[:social_distance][:car] = '1'
      params[:social_distance][:bicycle] = '1'
      params[:social_distance][:taxi] = '0'
      params[:social_distance][:other_transportations] = '0'
      
      post social_distances_path, params: params

      # Assert
      expect(response.body).to include('redirected')
    end
    context 'blank' do
      it 'if not logged in' do
        # Arrange
        user = FactoryBot.create(:user)
        # Act
        params = {}
        params[:social_distance]={}

        params = {}
        params[:social_distance]={}
        params[:social_distance][:how_many_residents] = ''
        params[:social_distance][:residence_type] = ''
        params[:social_distance][:bedrooms] = ''
        params[:social_distance][:bathrooms] = ''
        params[:social_distance][:rooms] = ''
        params[:social_distance][:many_contacts] = ''
        params[:social_distance][:been_outdoor] = ''
        params[:social_distance][:many_times_outdoor] = ''
        params[:social_distance][:supermarket] = ''
        params[:social_distance][:pharmacy] = ''
        params[:social_distance][:health_service] = ''
        params[:social_distance][:commerce] = ''
        params[:social_distance][:market] = ''
        params[:social_distance][:workplace] = ''
        params[:social_distance][:other_places] = ''
        params[:social_distance][:public_transportation] = ''
        params[:social_distance][:many_transportations] = ''
        params[:social_distance][:bus] = ''
        params[:social_distance][:subway] = ''
        params[:social_distance][:train] = ''
        params[:social_distance][:transport_apps] = ''
        params[:social_distance][:car] = ''
        params[:social_distance][:bicycle] = ''
        params[:social_distance][:taxi] = ''
        params[:social_distance][:other_transportations] = ''
        
        post social_distances_path, params: params

        # Assert
        expect(response.body).not_to include('form_ok')
        expect(response.body).not_to include('Cadastrar')
        expect(response.body).to include(I18n.t(:blank))
      end
      it 'if logged in' do
        # Arrange
        user = FactoryBot.create(:user)
        log_in
        # Act
        params = {}
        params[:social_distance]={}

        params = {}
        params[:social_distance]={}
        params[:social_distance][:how_many_residents] = ''
        params[:social_distance][:residence_type] = ''
        params[:social_distance][:bedrooms] = ''
        params[:social_distance][:bathrooms] = ''
        params[:social_distance][:rooms] = ''
        params[:social_distance][:many_contacts] = ''
        params[:social_distance][:been_outdoor] = ''
        params[:social_distance][:many_times_outdoor] = ''
        params[:social_distance][:supermarket] = ''
        params[:social_distance][:pharmacy] = ''
        params[:social_distance][:health_service] = ''
        params[:social_distance][:commerce] = ''
        params[:social_distance][:market] = ''
        params[:social_distance][:workplace] = ''
        params[:social_distance][:other_places] = ''
        params[:social_distance][:public_transportation] = ''
        params[:social_distance][:many_transportations] = ''
        params[:social_distance][:bus] = ''
        params[:social_distance][:subway] = ''
        params[:social_distance][:train] = ''
        params[:social_distance][:transport_apps] = ''
        params[:social_distance][:car] = ''
        params[:social_distance][:bicycle] = ''
        params[:social_distance][:taxi] = ''
        params[:social_distance][:other_transportations] = ''
        
        post social_distances_path, params: params
        
        # Assert

        expect(response.body).not_to include('form_ok')
        expect(response.body).not_to include('Cadastrar')
        expect(response.body).to include(I18n.t(:blank))
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

def log_in
  user = FactoryBot.create(:user)
  login_as user, scope: :user
end