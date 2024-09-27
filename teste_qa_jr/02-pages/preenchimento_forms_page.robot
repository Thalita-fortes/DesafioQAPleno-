*** Settings ***
Documentation        Nesse arquivo são adicionados todas as variaveis dos testes
Resource    ../Main.robot
Library    FakerLibrary

*** Variables ***
#Variados
${TitleTela}                 xpath=//h1[@id="title"] 
${MsgErro}                   xpath=//span[@class="error"]
${SelectProd}                xpath=//select[@id="product" ]
${CampoObrigatorio01}        xpath=(//span[@class='required-mark'][contains(.,'(obrigatório)')])[1]
${CampoObrigatorio02}        xpath=(//span[@class='required-mark'][contains(.,'(obrigatório)')])[1]
${CampoObrigatorio03}        xpath=(//span[@class='required-mark'][contains(.,'(obrigatório)')])[1]
${CampoObrigatorio04}        xpath=(//span[@class='required-mark'][contains(.,'(obrigatório)')])[1]
${PoliticaPriva}             xpath=//a[@href="privacy.html"]
${MsgSuccess}                 xpath=//span[@class="success"]

#Buttons
${BtnSubmit}               xpath=//button[@type="submit"]
${BtnUpload}               xpath=//input[@id="file-upload"]
${CheckElogio}             xpath=//label[contains(.,'Elogio')]
${CheckAjuda}              xpath=//label[contains(.,'Ajuda')]
${CheckFeed}               xpath=//label[contains(.,'Feedback')]
${SelecProd}               xpath=//option[@value='mentoria']
${CheckEmail}              id:email-checkbox
${CheckPhone}              id:phone-checkbox

#Inputs
${InputName}               xpath=//input[@id="firstName"]
${InputLastName}           xpath=//input[@name="lastName"]
${InputEmail}              xpath=//input[@id="email"]
${InputFone}               xpath=//input[@id="phone"]
${InputAjuda}              xpath=//textarea[@id="open-text-area"]


## Dados
${PreenchimentoAjuda}        TESTE AUTOMAÇÃO