***Settings***
Resource         ./resources/base.robot

# Test Teardown    End Session


***Test Cases***
# Cenario 1: Verifica se a pagina esta online
#      New Session
    #  Menu institucional

Cenario 2: Verificar se filial Cascavel está visível
     New Session
     Menu institucional
     Verificar Matriz e filiais
     Verificar filial Cascavel
     Voltar pagina

# Cenario 3: Verificar se filial Goiania não é visível
#      New Session
#      Menu institucional
#      Verificar Matriz e filiais
#      Verificar filial Goiania
    