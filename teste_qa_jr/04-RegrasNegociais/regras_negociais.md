# Regras de Negócio Derivadas do Código-Fonte

### Regras de negócio deduzidas do código:

#### Campos Obrigatórios:
- **RN01** - Nome, Sobrenome, E-mail e "Como podemos te ajudar?" são campos obrigatórios, identificados pela marcação "(obrigatório)".
- **RN02** - O sistema valida a presença desses campos ao tentar enviar o formulário. Se não forem preenchidos, uma mensagem de erro ("Valide os campos obrigatórios!") será exibida.

#### Validação do E-mail:
- **RN03** - O campo "E-mail" exige que o dado fornecido esteja no formato de um e-mail válido.

#### Telefone Não Obrigatório:
- **RN04** - O campo "Telefone" não é obrigatório, mas está presente no formulário sem máscara de formatação ou verificação específica para números.

#### Seleção de Produto:
- **RN05** - O usuário pode selecionar um produto entre "Blog", "Cursos", "Mentoria" e "YouTube". Este campo não é obrigatório.

#### Tipo de Atendimento:
- **RN06** - O usuário deve escolher o tipo de atendimento entre "Ajuda" (seleção padrão), "Elogio" ou "Feedback" através de botões de rádio. Pelo menos uma dessas opções deve ser selecionada.

#### Meio de Contato Preferencial:
- **RN07** - O usuário pode marcar como prefere ser contatado: E-mail, Telefone, ou ambos. Esses campos são apresentados como checkboxes, permitindo múltiplas seleções.

#### Campo de Texto para Ajuda:
- O campo "Como podemos te ajudar?" é obrigatório e precisa ser preenchido com detalhes sobre a solicitação do cliente.

#### Anexo Opcional:
- **RN08** - Existe a opção de adicionar um anexo através do campo de upload de arquivos, que não é obrigatório.

#### Política de Privacidade:
- **RN09** - Há um link para a "Política de Privacidade" que abre em uma nova aba, garantindo que o usuário tenha acesso às informações legais.

#### Botão de Enviar:
- **RN10** - O formulário é enviado quando o usuário clica no botão "Enviar", desde que todos os campos obrigatórios sejam preenchidos corretamente. Se as validações falharem, o envio será bloqueado e uma mensagem de erro será exibida.

#### Mensagens de Feedback:
- **RN11** - Caso o envio seja bem-sucedido, uma mensagem "Mensagem enviada com sucesso" será exibida. Se houver falha, o formulário exibirá a mensagem "Valide os campos obrigatórios!".
