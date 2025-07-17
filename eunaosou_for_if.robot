*** Settings ***
Library    SeleniumLibrary
Documentation    criar uma variavel do tipo lista com mais ou até 10 itens
...              percorrer essa variavel num loop FOR e usando um IF dentro
...              do bloco FOR, imprimir no LOG 'Eu sou o numero 5! e 10!'
...              e também 'Eu não sou o mnumero 5! nem 10!'

*** Variables ***

@{NOMES}    VERA  VERONICA  GILMAR  GILBERTO  GILVAN  JAIME  JAIR  JAIRO  JARDE  JOSE  HONORATO
...         MAZE  GILDA  GIVALDO

*** Test Cases ***
IMRPIMINDO O CINCO E O DEZ

    USANDO O FOR IN ENUMERATE    

*** Keywords ***
USANDO O FOR IN ENUMERATE
        Log To Console    ${\n}
        Log To Console    **** Iniciando a Brincadeira ****
        Log    **** Iniciando a Brincadeira ****
        # Log To Console    ${\n}
    FOR   ${INDICE}   ${NOME}   IN ENUMERATE   @{NOMES}
        IF    '${NOME}' == 'JAIME'
              Log To Console    ${\n}
              Log To Console    Eu sou o número ${INDICE} e me chamo ${NOME}
              Log    Eu sou o número ${INDICE} e me chamo ${NOME}
        ELSE IF     '${NOME}' == 'HONORATO'
              Log To Console    ${\n}
              Log To Console    Eu sou o número ${INDICE} e me chamo ${NOME}
              Log    Eu sou o número ${INDICE} e me chamo ${NOME}
        ELSE
              Log To Console    ${\n}
              Log To Console    Eu não sou o número 5 nem o 10, eu sou o número ${INDICE} e me chamo ${NOME}
              Log    Eu não sou o número 5 nem o 10, eu sou o número ${INDICE} e me chamo ${NOME}
            
        END
    END
        Log To Console    ${\n}
        Log To Console    **** Finalizando a Brincadeira ****
        Log    **** Finalizando a Brincadeira ****