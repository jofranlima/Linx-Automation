***Settings***
Library          SeleniumLibrary

***Variables***

${url}    https://www.linx.com.br/    
${menuInstitucional}            css=a[data-menu-link="institutional"]
${matrizEFiliais}               css=a[href*=matriz]
${institucionalCarreiras}       css=a[href="/carreira-linx/"]
${filialCascavel}               Cascavel/PR 
${filialGoiania}                Aparecida de Goiania
${select_id}                    id=greenouse-segments
${filtroLinxSuporte}             Linx - Suporte
${filtroTecnologiaEProduto}      Linx - Tecnologia e Produto

***Keywords***
New Session                            
    Open Browser                       ${url}                           browser=chrome        options=add_argument("--start-maximized")
End Session
    Close Browser
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

Selecionar institucionalCarreiras
    Click Element    ${institucionalCarreiras}

Filtrar segmento Suporte
   Element Should Not Be Visible    ${select_id}    ${filtroLinxSuporte}

Verificar se existe segmento Suporte
   Element Should Not Contain    ${select_id}    ${filtroLinxSuporte}     error=Texto Segmento "${filtroLinxSuporte}" está presente na lista

Filtrar Tecnologia e Produto
   Select From List By Value    ${select_id}    ${filtroTecnologiaEProduto}

Verificar se filtro foi selecionado
    Element Should Contain    css=[class="a-title o-work-with-us_subtitle"]    Linx - Tecnologia e Produto
