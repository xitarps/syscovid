require 'rails_helper'

feature 'user view homepage' do
  context 'user' do
    it 'successfully' do
      # Arrange
    
      # Act
      visit root_path

      # Assert
      expect(page).to have_css('img[src*="logo"]').exactly(3).times
      expect(page).to have_content('Explicação sobre o que é o site')
      expect(page).to have_content('Clique aqui para visualizar termos')
      expect(page).to have_content('Já sou cadastrado')
      expect(page).to have_content('Novo usuário')
    end
  end
end
