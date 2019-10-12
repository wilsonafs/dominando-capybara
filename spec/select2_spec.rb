describe 'Select 2', :select2 do
    describe('single', :single) do
        before(:each) do
            visit('/apps/select2/single.html')
        end

        it 'seleciona ator por nome' do
            find('.select2-selection--single').click
            find('.select2-results__option', text: 'Adam Sandler').click
        end

        it 'busca e clica no ator' do
            find('.select2-selection--single').click
            find('.select2-search__field').set 'Chris Rock'
            find('.select2-results__option').click
        end
    end


    describe('multiple', :multiple) do
        before(:each) do
            visit('/apps/select2/multi.html')
        end
        
        def seleciona(ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click  
        end


        it 'seleciona atores' do
            atores = ['Jim Carrey', 'Owen Wilson', 'Kevin James']
            
            atores.each do |a|
                seleciona(a)
            end
            
        end
    end
end
