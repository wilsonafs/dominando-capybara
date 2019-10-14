describe 'Mouve hover', :hover do
    before(:each) do
        visit('/hovers')
    end

    it 'quando passo o mouse sobre o blade' do
        card = find('img[alt=Blade]')       
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'quando passo o mouse sobre o Pantera negra' do
        card = find('img[alt="Pantera Negra"]')       
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'quando passo o mouse sobre o Homem Aranha' do
        card = find('img[alt="Homem Aranha"]')       
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

end
