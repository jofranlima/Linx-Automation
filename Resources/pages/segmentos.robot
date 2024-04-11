***Settings***
Library          SeleniumLibrary

***Variables***


${url}    https://www.linx.com.br/    
${menuInstitucional}            css=a[data-menu-link="institutional"]
${institucionalCarreiras}       css=a[href="/carreira-linx/"]
${select_id}                    id=greenouse-segments
${filtroLinxSuporte}             Linx - Suporte
${filtroTecnologiaEProduto}      Linx - Tecnologia e Produto


***Keywords***
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
