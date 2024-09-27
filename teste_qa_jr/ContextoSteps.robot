*** Settings ***
Resource    Main.robot
Library     SeleniumLibrary


Documentation        Nessa tela é adicionada a url do site e qual navegador vou usar nos testes
*** Variables ***
${URL}         https://cac-tat.s3.eu-central-1.amazonaws.com/index.html
${BROWSER}     chrome

${arquivos_upload}        ${CURDIR}//06-files


*** Keywords ***
Nova sessao
    Open Browser    ${URL}    ${BROWSER}
    ...             options=add_experimental_option("detach", True)
    Maximize Browser Window

Encerra sessao
    Capture Page Screenshot
    Close Browser

Preencher campo
    [Arguments]    ${elemento}    ${valor}
    Wait Until Element Is Visible    ${elemento}    30
    Click Element    ${elemento}
    Sleep    1
    Wait Until Element Is Enabled    ${elemento}    5
    Sleep    0.3
    Input Text    ${elemento}    ${valor}
    FOR    ${i}    IN RANGE    1    11
        Sleep    1
        ${textoAtual}    Get Element Attribute    ${elemento}    value
        IF    "${textoAtual}" == "${valor}"
            Exit For Loop
        ELSE IF    "${textoAtual}" != "${valor}"
            IF    "${i}" == "${10}"
                Log To Console    *** Falha ao tentar preencher o campo ${elemento}
                Log    *** Falha ao tentar preencher o campo ${elemento}
                Capture Page Screenshot
                Fail    *** Falha ao tentar preencher o campo ${elemento}
            ELSE
                Input Text    ${elemento}    ${valor}
            END
        END
    END

Click no Item
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}    30
    Sleep    1
    Click Element    ${elemento}
    Sleep    1