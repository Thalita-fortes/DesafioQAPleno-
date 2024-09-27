*** Settings ***
Resource    ../Main.robot
Documentation        Nesse arquivo são adicionados todas as keywords dos testes

Library         FakerLibrary    locale=pt_BR

*** Keywords ***    
que estou na tela inicial do forms
    Wait Until Element Is Visible        ${TitleTela}           60
    Page Should Contain        Forneça o máximo de informações, por favor.

realizar o envio do formulario sem preencher os campos obrigatorios
    Click no Item    ${BtnSubmit}

o sistema deverá exibir uma mensagem de alerta
    Wait Until Element Is Visible    ${MsgErro}    60

os campos forem exibidos
    Wait Until Element Is Visible    ${InputName}    60
    Wait Until Element Is Visible    ${SelectProd}    60
    Page Should Contain    Qual seu meio de contato preferencial?
    Page Should Contain    Como podemos te ajudar?
    Page Should Contain    Adicione um anexo

o sistema deverá exibir uma legenda informando os campos obrigatorios
    Wait Until Element Is Visible    ${CampoObrigatorio01}
    Wait Until Element Is Visible    ${CampoObrigatorio02}
    Wait Until Element Is Visible    ${CampoObrigatorio03}
    Wait Until Element Is Visible    ${CampoObrigatorio04}

clicar no link de politica de privacidade
    Click no Item                    ${PoliticaPriva}

o sistema deverá redirecionar o usuario para a tela de politicas de privacidade
    Switch Window    NEW
    Wait Until Element Is Visible    ${TitleTela}    60
    Close Window
    Switch Window    MAIN    


realizar o preenchimento dos campos obrigatorios
    ${FAKER_NAME}                  FakerLibrary.First Name
    Preencher campo        ${InputName}         ${FAKER_NAME}
    
    ${FAKER_LASTNAME}              FakerLibrary.Last Name
    Preencher campo        ${InputLastName}     ${FAKER_LASTNAME}

    ${FAKER_EMAIL}                 FakerLibrary.Email 
    Preencher campo        ${InputEmail}       ${FAKER_EMAIL}

    ${FAKER_PHONE}        FakerLibrary.phone_number
    Click no Item          ${InputFone} 
    Input Text             ${InputFone}           ${FAKER_PHONE}
    Press Keys    none     TAB
    Preencher campo        ${InputAjuda}          ${PreenchimentoAjuda} 
    

clicar em enviar
    Click no Item          ${BtnSubmit} 

o sistema deverá enviar o formulario com sucesso
    Wait Until Element Is Visible    ${MsgSuccess}

selecionar o arquivo
    Choose File        ${BtnUpload}          ${arquivos_upload}\\Teste.pdf

selecionar o tipo de atendimento como 'Elogio'
    Click no Item    ${CheckElogio}  
    Capture Page Screenshot

selecionar o tipo de atendimento como 'Feedback'
    Click no Item    ${CheckFeed}
    Capture Page Screenshot

selecionar o tipo de atendimento como 'Ajuda'
    Click no Item    ${CheckAjuda} 
    Capture Page Screenshot

selecionar um tipo de produto
    Click no Item    ${SelecProd}
    Capture Page Screenshot

selecionar o checkbox de email
    Click no Item    ${CheckEmail} 
    Capture Page Screenshot

selecionar o checkbox de telefone
    Click no Item    ${CheckPhone} 
    Capture Page Screenshot

deixar um dos campos obrigatorio sem preenchimento
    ${FAKER_NAME}                  FakerLibrary.First Name
    Preencher campo        ${InputName}         ${FAKER_NAME}
    
    ${FAKER_LASTNAME}              FakerLibrary.Last Name
    Preencher campo        ${InputLastName}     ${FAKER_LASTNAME}

    ${FAKER_EMAIL}                 FakerLibrary.Email 
    Preencher campo        ${InputEmail}       ${FAKER_EMAIL}

    ${FAKER_PHONE}        FakerLibrary.phone_number
    Click no Item          ${InputFone} 
    Input Text             ${InputFone}           ${FAKER_PHONE}
    Press Keys    none     TAB

o sistema exibira mensagem de erro solicitando que o usuario preencha os campos obrigatorios
    clicar em enviar
    ${VlParametro}    Run Keyword And Return Status    Wait Until Element Is Visible    ${MsgErro}
    IF    '${VlParametro}' == 'False'
        Wait Until Element Is Visible    ${MsgSuccess}
    ELSE
       Preencher campo        ${InputAjuda}          ${PreenchimentoAjuda}
    END   

ao clicar em enviar o sistema deverá exibir a mensagem de sucesso
    clicar em enviar
    Wait Until Element Is Visible    ${MsgSuccess}