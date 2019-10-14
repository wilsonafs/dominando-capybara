describe 'Tabelas', :table do
    before(:each) do
        visit('/tables')
    end

    it 'pega um dado da tabela' do
        atores = all('table tbody tr')
        stark = atores.detect { |ator|ator.text.include?('Robert Downey Jr') }
        expect(stark.text).to include '10.000.000'
    end

    it 'busca com um campo chave que não tem duplicidade' do 
        diesel = find('table tbody tr', text: '@vindiesel')
        expect(diesel).to have_content '10.000.000'

    end

    it 'busca pela coluna ao inves da linha' do
        diesel = find('table tbody tr', text: '@vindiesel')
        movie = diesel.all('td')[2].text
        expect(movie).to eql 'Velozes e Furiosos'
    end

    it 'outro cenario com busca pela coluna' do
        evans = find('table tbody tr', text: 'Chris Evans')
        insta = evans.all('td')[4].text
        expect(insta).to eql '@teamcevans'
    end

    it 'cenario para deletar uma linha' do
        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'delete').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    end

    it 'cenario para editar uma linha' do
        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'edit').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
    end
end
