***Settings***
Resource         ../Resources/pages/configs.robot
Resource         ../Resources/pages/matriz.robot
Resource         ../Resources/pages/segmentos.robot

Test Teardown    End Session


***Test Cases***
Cenario 1: Verifica se a pagina esta online
     New Session
     Menu institucional

Cenario 2: Verificar se filial Cascavel está visível e Aparecida de Goiania não é visivel
     New Session
     Menu institucional
     Selecionar Matriz e filiais
     Verificar Matriz e filiais
     Verificar filial Cascavel
     Verificar filial Goiania
     Voltar pagina

Cenario 3: Voltar pagina
     New Session
     Menu institucional
     Selecionar Matriz e filiais
     Voltar pagina

 Cenario 4: Selecionar institucionalCarreiras
     New Session
     Menu institucional
     Selecionar institucionalCarreiras 

Cenario 5: Verificar filtro selecionado e segmento não presente 
     New Session
     Menu institucional
     Selecionar institucionalCarreiras 
     Filtrar Tecnologia e Produto
     Verificar se filtro foi selecionado
     Verificar se existe segmento Suporte

