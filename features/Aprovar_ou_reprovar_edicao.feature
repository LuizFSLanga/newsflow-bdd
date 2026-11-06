Feature: Aprovar ou reprovar edição
    "**Como** revisor"
    "**Quero** analisar e aprovar ou reprovar uma edição"
    "**Para** garantir a qualidade do conteúdo enviado"

    "**Contexto:**"
    "**Dado** que existe uma edição aguardando aprovação"

  Background:
    Given que existe uma edição aguardando aprovação

  Scenario: Aprovar edição
    "**Dado** sou revisor"
    "**Quando** aprovo a edição"
    "**Então** o sistema deve marcar a edição como aprovada"
    Given sou revisor
    When aprovo a edição
    Then o sistema deve marcar a edição como aprovada

  Scenario: Impedir que o autor aprove a própria edição
    "**Dado** sou o autor da edição"
    "**Quando** tento aprovar sua própria edição"
    "**Então** o sistema deve impedir a aprovação"
    Given sou o autor da edição
    When tento aprovar sua própria edição
    Then o sistema deve impedir a aprovação

  Scenario: Reprovar edição
    "**Dado** sou revisor"
    "**Quando** reprovo a edição informando um comentário"
    "**Então** o sistema deve retornar a edição para rascunho"
    "**E** disponibilizar o comentário para o redator"
    Given sou revisor
    When reprovo a edição informando um comentário
    Then o sistema deve retornar a edição para rascunho
    And disponibilizar o comentário para o redator

  Scenario: Impedir reprovação sem comentário
    "**Dado** sou revisor"
    "**Quando** tento reprovar uma edição sem informar um comentário"
    "**Então** o sistema deve impedir a reprovação"
    Given sou revisor
    When tento reprovar uma edição sem informar um comentário
    Then o sistema deve impedir a reprovação
