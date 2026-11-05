# language: pt

Funcionalidade: Gerenciar inscrição e entrega de e-mails
  Como assinante
  Quero controlar minha inscrição e receber confirmação sobre minhas solicitações
  Para ter controle sobre os e-mails que recebo

  Cenário: Realizar descadastro
    Dado que o assinante está cadastrado
    Quando solicita o descadastro pelo link do e-mail
    Então o sistema deve interromper imediatamente os novos envios
    E enviar um e-mail de confirmação

  Cenário: Retornar à lista de assinantes
    Dado que o assinante solicitou o retorno à lista
    Quando confirma sua inscrição pelo link recebido por e-mail
    Então o sistema deve reativar sua inscrição

  Cenário: Impedir confirmação após 48 horas
    Dado que o link de confirmação foi enviado há mais de 48 horas
    Quando o assinante tenta utilizá-lo
    Então o sistema deve rejeitar a confirmação

  Cenário: Marcar entrega como falha definitiva
    Dado que um e-mail não foi entregue
    Quando todas as 3 tentativas de entrega forem realizadas sem sucesso
    Então o sistema deve marcar a entrega como falha definitiva

  Cenário: Remover endereço com hard bounce
    Dado que um endereço de e-mail apresentou hard bounce
    Quando o sistema identifica a falha permanente
    Então o endereço deve ser removido da base de assinantes

  Cenário: Manter endereço com soft bounce
    Dado que um endereço de e-mail apresentou soft bounce
    Quando o sistema identifica a falha temporária
    Então o endereço deve permanecer na base de assinantes
