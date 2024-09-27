*** Settings ***
Library     SeleniumLibrary
Documentation        Nessa tela são adicionadas todas as comunicações do projeto, ela possui acesso a todas as camadas.
# Ela é importante para não precisar das suites ficar importando as pages e resources

### Data ###
Resource    ContextoSteps.robot

### Pages ###
Resource    03-steps/preenchimento_forms_step.robot
Resource    02-pages/preenchimento_forms_page.robot