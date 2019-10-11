describe 'Dropdown' do
    it 'Caixa de opções', :dropdown do
        visit '/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 #temporario
    end

    it 'item especificado sem id', :dropdown do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
    end

    it 'qualquer elemento', :dropdown do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option

    end


end
