*** Settings ***
Documentation    Criar variavel do tipo lista e apresentar resultado em um LOG
Library    SeleniumLibrary

*** Variables ***
@{Meses}    01-Jaineiro
...         02-Fevereiro
...         03-Março
...         04-Abril
...         05-Maio
...         06-Junho
...         07-Julho
...         08-Agosto
...         09-Setembro
...         10-Outubro
...         11-Novembro
...         12-Dezembro

*** Test Cases ***
Imprimir todos os Meses do Ano
    Log To Console    Imprimindo todos os Meses do Ano:
    Log To Console    ${Meses[0]}
    Log To Console    ${Meses[1]}
    Log To Console    ${Meses[2]}
    Log To Console    ${Meses[3]}
    Log To Console    ${Meses[4]}
    Log To Console    ${Meses[5]}
    Log To Console    ${Meses[6]}
    Log To Console    ${Meses[7]}
    Log To Console    ${Meses[8]}
    Log To Console    ${Meses[9]}
    Log To Console    ${Meses[10]}
    Log To Console    ${Meses[11]}