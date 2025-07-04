*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}                         http://amazon.com.br
${Localizar_Eletronicos}       //a[contains(text(),'Eletrônicos')]

*** Keywords ***
Abrir o navegador
    Open Browser     browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Sleep    5s
    Wait Until Element Is Visible    locator=${Localizar_Eletronicos}

Entrar no menu "Eletrônicos"
    Click Element    ${Localizar_Eletronicos}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text=Eletrônicos e Tecnologia

Verificar se o título da página fica "${TITULO}"
    Title Should Be    ${TITULO}

Verificar se aparece a categoria "${Verifica_Categoria}"
    Element Should Be Visible    //span[@class='nav-a-content'][normalize-space()='${Verifica_Categoria}']

Acessar categoria "${Acessa_Categoria}"
    Click Element    //span[@class='nav-a-content'][normalize-space()='${Acessa_Categoria}']
    Element Should Be Visible    (//span[contains(text(),'${Acessa_Categoria}')])[2]
                                
###########

Digitar o nome de produto "${Pesquisa_Por}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox  text=${Pesquisa_Por}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando ${Pesquisa_Por}
    Wait Until Page Contains    text=${Pesquisa_Por}    

Clicar no texto pesquisa
    Click Element    locator=(//span[normalize-space()='Console Nintendo Switch 2'])[1]