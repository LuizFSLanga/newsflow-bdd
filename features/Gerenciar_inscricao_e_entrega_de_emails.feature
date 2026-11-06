Feature: Gerenciar inscrição e entrega de e-mails
    "**Como** assinante"
    "**Quero** controlar minha inscrição e receber confirmação sobre minhas solicitações"
    "**Para** ter controle sobre os e-mails que recebo"

  Scenario: Realizar descadastro
    "**Dado** sou assinante"
    "**Quando** solicito o descadastro pelo link do e-mail"
    "**Então** o sistema deve interromper imediatamente os novos envios"
    "**E** enviar um e-mail de confirmação"
    Given sou assinante
    When solicito o descadastro pelo link do e-mail
    Then o sistema deve interromper imediatamente os novos envios
    And enviar um e-mail de confirmação

  Scenario: Retornar à lista de assinantes
    "**Dado** sou assinante"
    "**Quando** solicito o retorno à lista de assinantes e confirmo a inscrição pelo link recebido por e-mail"
    "**Então** o sistema deve reativar a inscrição"
    Given sou assinante
    When solicito o retorno à lista de assinantes e confirmo a inscrição pelo link recebido por e-mail
    Then o sistema deve reativar a inscrição

  Scenario: Impedir confirmação após 48 horas
    "**Dado** sou assinante"
    "**Dado** que o link de confirmação foi enviado há mais de 48 horas"
    "**Quando** tento utilizá-lo"
    "**Então** o sistema deve rejeitar a confirmação"
    Given sou assinante
    Given que o link de confirmação foi enviado há mais de 48 horas
    When tento utilizá-lo
    Then o sistema deve rejeitar a confirmação

  Scenario: Marcar entrega como falha definitiva
    "**Dado** que um e-mail não foi entregue"
    "**Quando** todas as 3 tentativas de entrega forem realizadas sem sucesso"
    "**Então** o sistema deve marcar a entrega como falha definitiva"
    Given que um e-mail não foi entregue
    When todas as 3 tentativas de entrega forem realizadas sem sucesso
    Then o sistema deve marcar a entrega como falha definitiva

  Scenario: Remover endereço com hard bounce
    "**Dado** que um endereço de e-mail apresentou hard bounce"
    "**Quando** o sistema identifica a falha permanente"
    "**Então** o endereço deve ser removido da base de assinantes"
    Given que um endereço de e-mail apresentou hard bounce
    When o sistema identifica a falha permanente
    Then o endereço deve ser removido da base de assinantes

  Scenario: Manter endereço com soft bounce
    "**Dado** que um endereço de e-mail apresentou soft bounce"
    "**Quando** o sistema identifica a falha temporária"
    "**Então** o endereço deve permanecer na base de assinantes"
    Given que um endereço de e-mail apresentou soft bounce
    When o sistema identifica a falha temporária
    Then o endereço deve permanecer na base de assinantes
