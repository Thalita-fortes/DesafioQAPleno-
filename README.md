<h1>  Automação Robot Framework :robot: + (BDD)  :woman_technologist: :vulcan_salute: </h1>
BDD do caso de teste - Behavior Driven Development (BDD ou ainda, em livre tradução, Desenvolvimento Guiado por Comportamento) é uma abordagem de design de software de forma disciplinada, abordando uma série de conceitos e técnicas sempre com foco no domínio do software.
```markdown
# Automação de Testes - Preenchimento de Formulários

## Descrição do Projeto

Este repositório contém a automação de testes de preenchimento de formulários utilizando o **Robot Framework**. O projeto executa uma série de cenários de teste voltados para a validação de campos obrigatórios, envio de formulários, seleção de arquivos e a verificação de políticas de privacidade, entre outros.

## Estrutura dos Testes

Cada **suite de teste** segue a estrutura de inicialização e encerramento de sessões de navegador, além de criar pastas específicas para armazenar logs de cada execução, evitando que os logs poluam a pasta raiz.

### Organização das Suites e Logs

Cada suite de teste possui um comando de execução que cria uma pasta dedicada dentro de `5-results/` para armazenar os logs, relatórios e capturas de tela da execução, evitando a poluição da pasta raiz com múltiplos arquivos.

Exemplo:
- `./5-results/CN01` para armazenar os logs da suite de testes **CN01**.
- O mesmo padrão é seguido para as outras suites de teste.

Comando de exemplo para execução:
```bash
robot -v browser:chrome -t "CN01 - Validar mensagem de campos obrigatorios" -d ./5-results/CN01 "01-resources/CenariosTestes/preenchimento_forms.robot"
```

### Estrutura Geral dos Testes

Cada teste segue o fluxo de:
1. **Setup**: Inicia uma nova sessão de navegador.
2. **Execução do Cenário**: Realiza as interações descritas no cenário (preenchimento de campos, envio de formulários, validação de mensagens).
3. **Teardown**: Finaliza a sessão do navegador.

A execução de cada teste é acompanhada da criação de uma nova pasta de resultado, conforme o comando de execução.

## Suites de Teste

### CN01 - Validar mensagem de campos obrigatórios
- **Descrição**: Este teste valida se o sistema exibe a mensagem de alerta ao tentar enviar um formulário sem preencher os campos obrigatórios.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN01 - Validar mensagem de campos obrigatorios" -d ./5-results/CN01 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

### CN02 - Validar campos obrigatórios
- **Descrição**: Valida se o sistema informa corretamente quais campos são obrigatórios no formulário.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN02 - Validar campos obrigatorios" -d ./5-results/CN02 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

### CN03 - Validar acesso à política de privacidade
- **Descrição**: Verifica se o usuário consegue acessar a página de política de privacidade através do link no formulário.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN03 - Validar acesso a politica de privacidade" -d ./5-results/CN03 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

### CN04 - Realizar envio do formulário sem selecionar o arquivo
- **Descrição**: Este teste realiza o envio do formulário sem selecionar um arquivo.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN04 - Realizar envio do formulario sem selecionar o arquivo" -d ./5-results/CN04 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

### CN05 - Realizar envio do formulário com o arquivo
- **Descrição**: Este teste realiza o envio do formulário com um arquivo selecionado.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN05 - Realizar envio do formulario com o arquivo" -d ./5-results/CN05 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

### CN06 - Realizar envio do formulário com o arquivo e o tipo de atendimento como 'Elogio'
- **Descrição**: Realiza o envio do formulário com o arquivo e o tipo de atendimento como 'Elogio'.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN06 - Realizar envio do formulario com o arquivo e o tipo de atendimento como 'Elogio'" -d ./5-results/CN06 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

### CN07 - Realizar envio do formulário com o arquivo e o tipo de atendimento como 'Ajuda'
- **Descrição**: Realiza o envio do formulário com o arquivo e o tipo de atendimento como 'Ajuda'.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN07 - Realizar envio do formulario com o arquivo e o tipo de atendimento como 'Ajuda'" -d ./5-results/CN07 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

### CN08 - Realizar envio do formulário com o arquivo e o tipo de atendimento como 'Feedback'
- **Descrição**: Realiza o envio do formulário com o arquivo e o tipo de atendimento como 'Feedback'.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN08 - Realizar envio do formulario com o arquivo e o tipo de atendimento como 'Feedback'" -d ./5-results/CN08 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

### CN09 - Realizar envio do formulário com um valor de produto selecionado
- **Descrição**: Realiza o envio do formulário com um produto selecionado.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN09 - Realizar envio do formulario com um valor de produto selecionado" -d ./5-results/CN09 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

### CN10 - Realizar envio do formulário com o checkbox de email selecionado
- **Descrição**: Realiza o envio do formulário com o checkbox de email selecionado.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN10 - Realizar envio do formulario com o check box de email selecionado" -d ./5-results/CN10 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

### CN11 - Realizar envio do formulário com o campo obrigatório sem preenchimento
- **Descrição**: Este cenário realizará o envio do formulário sem preencher o campo obrigatório de 'Ajuda', validar a mensagem de erro e depois realizar o envio com sucesso.
- **Comando de execução**:
    ```bash
    robot -v browser:chrome -t "CN11 - Realizar envio do formulario com o campo obrigatorio sem preenchimento" -d ./5-results/CN11 "01-resources/CenariosTestes/preenchimento_forms.robot"
    ```

## Como Executar

### Requisitos
- **Robot Framework**: Para rodar os testes, você precisará ter o Robot Framework instalado.
- **Navegador Chrome** e **WebDriver** compatível.

### Executando os Testes

Execute os testes usando o seguinte comando:

```bash
robot -v browser:chrome -t "<NOME_DO_TESTE>" -d ./5-results/<PASTA_DE_LOGS> "01-resources/CenariosTestes/preenchimento_forms.robot"
```

Exemplo para o CN01:
```bash
robot -v browser:chrome -t "CN01 - Validar mensagem de campos obrigatorios" -d ./5-results/CN01 "01-resources/CenariosTestes/preenchimento_forms.robot"
```

Cada suite de testes criará automaticamente uma pasta de resultado dentro do diretório `5-results/`, onde você encontrará os arquivos de log, relatório e capturas de tela de cada execução.

## Estrutura de Pastas

```
├── 01-resources/
│   └── CenariosTestes/
│       └── preenchimento_forms.robot
├── 5-results/
│   └── CN01/
│       └── output.xml
│       └── log.html
│       └── report.html
├── README.md
```

- **01-resources/**: Contém os arquivos com os cenários de teste.
- **5-results/**: Diretório onde serão armazenados os logs e relatórios de cada suite de teste, com subpastas específicas para cada execução.
- **README.md**: Arquivo de documentação.
```

Esse arquivo de README contém todos os detalhes sobre o projeto, as instruções para execução e informações sobre a organização das pastas de resultados.
