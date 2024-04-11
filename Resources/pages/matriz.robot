***Settings***
Library          SeleniumLibrary

***Variables***


${url}    https://www.linx.com.br/    
${menuInstitucional}            css=a[data-menu-link="institutional"]
${matrizEFiliais}               css=a[href*=matriz]
${institucionalCarreiras}       css=a[href="/carreira-linx/"]
${filialCascavel}               Cascavel/PR 
${filialGoiania}                Aparecida de Goiania

***Keywords***

Menu institucional
    Element Should Be Visible                ${menuInstitucional}
    Click Element                            ${menuInstitucional}
Selecionar Matriz e filiais
    Click Element                            ${matrizEFiliais}


Verificar Matriz e filiais
    Element Should Be Visible    css=h1    
    Element Should Contain    css=h1    matriz e filiais

Verificar filial Cascavel
    Wait Until Page Contains    ${filialCascavel}    timeout=10s    error=Texto "Filial ${filialCascavel}" não está presente

Verificar filial Goiania
    
      Wait Until Page Contains    ${filialGoiania}    timeout=10s    error=Texto "Filial ${filialGoiania}" não está presente

Voltar pagina
     Go Back
     Sleep        5