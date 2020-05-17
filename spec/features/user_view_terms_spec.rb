require 'rails_helper'

feature 'view terms' do
  context 'user' do
    it 'successfully' do
      # Arrange
    
      # Act
      visit terms_path

      # Assert
      expect(page).to have_content(I18n.t(:terms).capitalize)
      expect(page).to have_content(I18n.t(:back).capitalize)
    end
  end
end
