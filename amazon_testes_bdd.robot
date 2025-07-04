
*** Settings ***
Documentation    Esta suite testa o site da Amazon.com.br
Resource         amazon_resources_bdd.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Este teste verifica o menu Eletrônicos do site www.amazon.com.br
    ...                e verifica a categoria Computadores e Informática
    [Tags]             menus    categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Celulares e Comunicação" deve ser exibida na página


Caso de Teste 02 - Pesquisa de Produto
    [Documentation]    Este teste verifica a busca de um produto
    [Tags]             busca_produtos    lista_busca
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Console Nintendo Switch 2"
    Então o título da página deve ficar "Amazon.com.br : Console Nintendo Switch 2"
    E um produto da linha "Console Nintendo Switch 2" deve ser mostrado na página


