***Settings***
Library          SeleniumLibrary

***Variables***

${url}    https://www.linx.com.br/    
${menuInstitucional}    css=a[data-menu-link="institutional"]
${matrizEFiliais}       css=a[href*=matriz]
${filial}       Cascavel/PR 


***Keywords***
New Session                            
    Open Browser                       ${url}                           browser=chrome        options=add_argument("--start-maximized")
End Session
    Close Browser
Menu institucional
    Element Should Be Visible                ${menuInstitucional}
    Click Element                            ${menuInstitucional}
    Click Element                            ${matrizEFiliais}

Verificar Matriz e filiais
    Element Should Be Visible    css=h1    
    Element Should Contain    css=h1    matriz e filiais

Verificar filial Cascavel
    Wait Until Page Contains    ${filial}    timeout=10s    error=Texto "Filial ${filial}" não está presente

Verificar filial Goiania
    
      Wait Until Page Contains    Goiânia    timeout=5s    error=Filial "Goiânia" não existe na página

Voltar pagina
     Go Back