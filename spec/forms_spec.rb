describe 'Forms' do
    it 'login com sucesso' do
        visit "/login"
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'login com senha errada' do
        visit "/login"
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'tony'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'Senha é invalida'
        expect(find('#flash')).to have_content 'Senha é invalida'
    end

    it 'usuario nao cadastrado' do
        visit "/login"
        fill_in 'username', with: 'luan'
        fill_in 'password', with: 'teste!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include 'O usuário informado não está cadastrado!'
        expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end

end