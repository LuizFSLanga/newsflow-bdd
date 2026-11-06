Feature: Agendar envio de newsletter
    "**Como** gestor"
    "**Quero** agendar o envio de uma edição aprovada"
    "**Para** organizar a distribuição das newsletters"

    "**Contexto:**"
    "**Dado** que existe uma edição aprovada"

  Background:
    Given que existe uma edição aprovada

  Scenario: Verificar antecedência mínima para agendar
    "**Dado** sou gestor"
    "**Quando** agendo o envio para daqui a <minutos> minutos"
    "**Então** o sistema deve apresentar a mensagem "<mensagem>""
    Given sou gestor
    When agendo o envio para daqui a <minutos> minutos
    Then o sistema deve apresentar a mensagem "<mensagem>"

  Scenario: Verificar limite de reagendamentos
    "**Dado** sou gestor"
    "**Dado** que o envio já foi reagendado <vezes> vezes"
    "**Quando** solicito um novo reagendamento"
    "**Então** o sistema deve apresentar a mensagem "<mensagem>""
    Given sou gestor
    Given que o envio já foi reagendado <vezes> vezes
    When solicito um novo reagendamento
    Then o sistema deve apresentar a mensagem "<mensagem>"

  Scenario: Cancelar envio dentro do prazo permitido
    "**Dado** sou gestor"
    "**Dado** que existe um envio agendado para daqui a 10 minutos"
    "**Quando** solicito o cancelamento"
    "**Então** o sistema deve cancelar o envio"
    Given sou gestor
    Given que existe um envio agendado para daqui a 10 minutos
    When solicito o cancelamento
    Then o sistema deve cancelar o envio

  Scenario: Respeitar limite semanal de newsletters
    "**Dado** que um assinante já recebeu 2 newsletters na semana"
    "**Quando** uma nova newsletter é destinada a esse assinante"
    "**Então** o sistema deve colocar o envio na fila da semana seguinte"
    Given que um assinante já recebeu 2 newsletters na semana
    When uma nova newsletter é destinada a esse assinante
    Then o sistema deve colocar o envio na fila da semana seguinte
