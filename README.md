# Dominando Capybara

Repositório para auxiliar na automação dos principais elementos HTML

Basicamente um CheatSheet

Aproveite!

### Dica
- Para rodar um cenario especifico use o comando: 
```rspec --tag @nomeDoCenario```

- Para criar um Array de Simbolos:
``` teclas = %i[tab escape enter shift control alt]```

- Para criar um Array de Strings:
``` teclas = %w[a s d f g h j k l]```


### Podemos melhorar o seletor CSS na busca de elementos

- Buscando pela classe do elemento:
    ```'.avenger-list'```

- Buscando por ID do elemento:
   ``` '#flash'```

- Usando CSS selector
   ``` 'img[alt=Blade]'```

- Buscando um elemento mãe e depois o elemento filho
  ```  '.team-stark .column'```

Usando Regex:

- Para buscar um elemento que comece com um determinado nome:
   ``` 'img[altˆ=Pantera]'```

- Para buscar um elemento que contenha um determinado nome:
   ``` 'img[alt*=Pantera]'```

- Para buscar um elemento que termine um determinado nome:
    ``` 'img[alt$=Negra]'```




