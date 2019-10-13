describe 'Login com cadastro', :login3 do
    before(:each) do
        visit('/access')
    end

    #opção 1
    it 'login com sucesso' do
        login_form = find('#login')

        login_form.find('input[name=username]').set 'stark'
        login_form.find('input[name=password]').set 'jarvis!'

        click_button 'Entrar'
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

    end

    #opção 2
    it 'login com sucesso 2' do
    
        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
            click_button 'Entrar'
        end
        
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

    end

    it 'cadastro com sucesso 2' do
    
        within('#signup') do
            find('input[name=username]').set 'luan'
            find('input[name=password]').set 'teste!'
            click_link 'Criar Conta'
        end
        
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

    end


end