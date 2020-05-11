require 'rails_helper'

feature 'view terms' do
  context 'user' do
    it 'successfully' do
      # Arrange
    
      # Act
      visit terms_path

      # Assert
      expect(page).to have_content('Termos')
      expect(page).to have_content('Art')
      expect(page).to have_content('Voltar')
    end
  end
end
