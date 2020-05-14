require 'rails_helper'

feature 'view homepage' do
  context 'user' do
    it 'successfully' do
      # Arrange
    
      # Act
      visit root_path

      # Assert
      expect(page).to have_css('img[src*="logo"]').exactly(3).times
      expect(page).to have_content(I18n.t(:about_site).capitalize)
      expect(page).to have_content(I18n.t(:view_terms).capitalize)
      expect(page).to have_content(I18n.t(:already_registered).capitalize)
      expect(page).to have_content(I18n.t(:new_user).capitalize)
    end
  end
end
