***Settings***
Library          SeleniumLibrary
***Variables***
${url}    https://www.linx.com.br/    

***Keywords***
New Session                            
    Open Browser                       ${url}                           browser=chrome        options=add_argument("--start-maximized")
End Session
    Close Browser