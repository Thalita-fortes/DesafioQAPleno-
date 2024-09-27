*** Settings ***
Resource             ../../Main.robot
Documentation        Nessa tela será adicionado todos os cenários de testes  
### Inicia/fecha sessão do navegador por suite de teste
#Suite Setup       Nova sessao
#Suite Teardown    Encerra sessao
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessao
Test Teardown       Encerra sessao


*** Test Cases ***
CN01 - Validar mensagem de campos obrigatorios
## Comando de execução
# robot -v browser:chrome -t "CN01 - Validar mensagem de campos obrigatorios" -d ./5-results/CN01 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse teste realiza a validação da mensagem de campos obrigatorios
    Given que estou na tela inicial do forms
    When realizar o envio do formulario sem preencher os campos obrigatorios
    Then o sistema deverá exibir uma mensagem de alerta

CN02 - Validar campos obrigatorios
## Comando de execução
# robot -v browser:chrome -t "CN02 - Validar campos obrigatorios" -d ./5-results/CN02 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse teste realiza a validação dos campos obrigatorios
    Given que estou na tela inicial do forms
    When os campos forem exibidos
    Then o sistema deverá exibir uma legenda informando os campos obrigatorios

CN03 - Validar acesso a politica de privacidade
## Comando de execução
# robot -v browser:chrome -t "CN03 - Validar acesso a politica de privacidade" -d ./5-results/CN03 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse teste realiza a visualização do acesso a politica de privacidade
    Given que estou na tela inicial do forms
    When clicar no link de politica de privacidade
    Then o sistema deverá redirecionar o usuario para a tela de politicas de privacidade

CN04 - Realizar envio do formulario apenas selecionando o arquivo
## Comando de execução
# robot -v browser:chrome -t "CN04 - Realizar envio do formulario apenas selecionando o arquivo" -d ./5-results/CN04 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse teste realizar envio do formulario com o arquivo selecionado
    Given que estou na tela inicial do forms
    When realizar o preenchimento dos campos obrigatorios
    And clicar em enviar
    Then o sistema deverá enviar o formulario com sucesso

CN05 - Realizar envio do formulario com o arquivo
## Comando de execução
# robot -v browser:chrome -t "CN05 - Realizar envio do formulario com o arquivo" -d ./5-results/CN05 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse teste realizar envio do formulario com o arquivo
    Given que estou na tela inicial do forms
    When realizar o preenchimento dos campos obrigatorios
    And selecionar o arquivo
    And clicar em enviar
    Then o sistema deverá enviar o formulario com sucesso

CN06 - Realizar envio do formulario com o arquivo e o tipo de atendimento como 'Elogio'
## Comando de execução
# robot -v browser:chrome -t "CN06 - Realizar envio do formulario com o arquivo e o tipo de atendimento como 'Elogio'" -d ./5-results/CN06 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse teste realizar envio do formulario com o arquivo e o tipo de atendimento como 'Elogio'
    Given que estou na tela inicial do forms
    When realizar o preenchimento dos campos obrigatorios
    And selecionar o tipo de atendimento como 'Elogio'
    And selecionar o arquivo
    And clicar em enviar
    Then o sistema deverá enviar o formulario com sucesso

CN07 - Realizar envio do formulario com o arquivo e o tipo de atendimento como 'Ajuda'
## Comando de execução
# robot -v browser:chrome -t "CN07 - Realizar envio do formulario com o arquivo e o tipo de atendimento como 'Ajuda'" -d ./5-results/CN07 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse teste realizar envio do formulario com o arquivo e o tipo de atendimento como 'Ajuda'
    Given que estou na tela inicial do forms
    When realizar o preenchimento dos campos obrigatorios
    And selecionar o tipo de atendimento como 'Ajuda'
    And selecionar o arquivo
    And clicar em enviar
    Then o sistema deverá enviar o formulario com sucesso

CN08 - Realizar envio do formulario com o arquivo e o tipo de atendimento como 'Feedback'
## Comando de execução
# robot -v browser:chrome -t "CN08 - Realizar envio do formulario com o arquivo e o tipo de atendimento como 'Feedback'" -d ./5-results/CN08 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse teste realizar envio do formulario com o arquivo e o tipo de atendimento como 'Feedback'
    Given que estou na tela inicial do forms
    When realizar o preenchimento dos campos obrigatorios
    And selecionar o tipo de atendimento como 'Feedback'
    And selecionar o arquivo
    And clicar em enviar
    Then o sistema deverá enviar o formulario com sucesso

CN09 - Realizar envio do formulario com um valor de produto selecionado
## Comando de execução
# robot -v browser:chrome -t "CN09 - Realizar envio do formulario com um valor de produto selecionado" -d ./5-results/CN09 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse teste realizar envio do formulario com um valor de produto selecionado
    Given que estou na tela inicial do forms
    When realizar o preenchimento dos campos obrigatorios
    And selecionar um tipo de produto
    And selecionar o arquivo
    And clicar em enviar
    Then o sistema deverá enviar o formulario com sucesso

CN10 - Realizar envio do formulario com o check box de email selecionado
## Comando de execução
# robot -v browser:chrome -t "CN10 - Realizar envio do formulario com o check box de email selecionado" -d ./5-results/CN10 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse teste realiza o envio do formulario com o chebox de email selecionado
    Given que estou na tela inicial do forms
    When realizar o preenchimento dos campos obrigatorios
    And selecionar o checkbox de email
    And selecionar o arquivo
    And clicar em enviar
    Then o sistema deverá enviar o formulario com sucesso

CN11 - Realizar envio do formulario com o campo obrigatorio sem preenchimento
## Comando de execução
# robot -v browser:chrome -t "CN11 - Realizar envio do formulario com o campo obrigatorio sem preenchimento" -d ./5-results/CN11 "01-resources/CenariosTestes/preenchimento_forms.robot"
    [Documentation]    Esse cenário realizará o envio do formulario sem preencher o campo obrigatório de 'Ajuda' validar a mensagem de erro e depois realizar o envio com sucesso
    Given que estou na tela inicial do forms
    When deixar um dos campos obrigatorio sem preenchimento
    And o sistema exibira mensagem de erro solicitando que o usuario preencha os campos obrigatorios
    Then ao clicar em enviar o sistema deverá exibir a mensagem de sucesso