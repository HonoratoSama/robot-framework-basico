*** Settings ***
Documentation    Criar variavel do tipo dicionario, contendo os meses do ano
...              e sua respectiva quantidade de dias, apresentar resultado em um LOG
Library    SeleniumLibrary

*** Variables ***
&{Meses_Dias}    Jaineiro=31
...              Fevereiro=28
...              Março=31
...              Abril=30
...              Maio=31
...              Junho=30
...              Julho=31
...              Agosto=31
...              Setembro=30
...              Outubro=31
...              Novembro=30
...              Dezembro=31

*** Test Cases ***
Imprimir todos os Meses do Ano
    Log To Console    Imprimindo todos os Meses do Ano e seus dias:
    Log To Console    Janeiro tem ${Meses_Dias.Jaineiro} dias
    Log To Console    Fevereiro tem ${Meses_Dias.Fevereiro} dias
    Log To Console    Março tem ${Meses_Dias.Março} dias
    Log To Console    Abril tem ${Meses_Dias.Abril} dias
    Log To Console    Maio tem ${Meses_Dias.Maio} dias
    Log To Console    Junho tem ${Meses_Dias.Junho} dias
    Log To Console    Julho tem ${Meses_Dias.Julho} dias
    Log To Console    Agosto tem ${Meses_Dias.Agosto} dias
    Log To Console    Setembro tem ${Meses_Dias.Setembro} dias
    Log To Console    Outubro tem ${Meses_Dias.Outubro} dias
    Log To Console    Novembro tem ${Meses_Dias.Novembro} dias
    Log To Console    Dezembro tem ${Meses_Dias.Dezembro} dias