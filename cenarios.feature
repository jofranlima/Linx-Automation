Funcionalidade: Validações no site da Linx (desafio)

Cenario 1: Verifica se a pagina esta online
Dado que o usuário está na página inicial da Linx
Então a página inicial da Linx é exibida corretamente

Cenario 2: Verificar se filial Cascavel está visível
Dado que o usuário está na página inicial da Linx
Quando o usuário acessa a seção "Institucional" e seleciona "Matriz e Filiais"
Então a página de Matriz e Filiais é exibida corretamente
E a filial "CASCAVEL/PR" está listada
E a filial "APARECIDA DE GOIANIA" não está listada

Cenário 3: Voltar à página inicial
Dado que o usuário está em uma página da Linx
Quando o usuário retorna à página inicial
Então a página inicial da Linx é exibida corretamente

Cenario 4: Selecionar institucionalCarreiras
Dado que o usuário está na página inicial da Linx
Quando o usuário acessa a seção "Institucional" e seleciona "Carreira Linx"
Então a página de Carreira Linx é exibida corretamente

Cenario 5: Verificar filtro selecionado e segmento não presente
Dado que o usuário está na página de Carreira Linx
Quando o usuário filtra pelo segmento "Linx - Tecnologia e Produto"
Então o segmento "Linx - Suporte" não está listado
E o segmento "Linx - Tecnologia e Produto" está selecionado corretamente
