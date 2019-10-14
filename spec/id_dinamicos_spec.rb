describe 'IDs dinamicos', :ids_dinamico do
    before(:each) do
        visit('/access')
    end

    # $ -> termina com
    # ^ -> comeca com
    # * -> contem

    it 'cadastro' , :wnd do
        find('input[id$=UsernameInput]').set 'teste'
        find('input[id^=PasswordInput]').set 'teste'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
         
      end
    
end
