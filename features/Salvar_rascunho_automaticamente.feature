Feature: Salvar rascunho automaticamente
    "**Como** redator"
    "**Quero** que meu texto seja salvo automaticamente"
    "**Para** não perder meu trabalho"

    "**Contexto:**"
    "**Dado** que existe uma edição aguardando aprovação"

  Background:
    Given que existe uma edição em rascunho

  Scenario: Salvar edição automaticamente
    "**Quando** passam 30 segundos"
    "**Então** o sistema deve salvar automaticamente a edição"
    "**E** gerar uma nova versão numerada"
    When passam 30 segundos
    Then o sistema deve salvar automaticamente a edição
    And gerar uma nova versão numerada

  Scenario: Manter as últimas 20 versões
    "**Dado** que a edição possui 20 versões salvas"
    "**Quando** uma nova versão é salva"
    "**Então** o sistema deve manter somente as 20 versões mais recentes"
    Given que a edição possui 20 versões salvas
    When uma nova versão é salva
    Then o sistema deve manter somente as 20 versões mais recentes

  Scenario: Restaurar uma versão anterior
    "**Dado** que existem versões anteriores da edição"
    "**Quando** o redator restaura uma versão"
    "**Então** o sistema deve recuperar o conteúdo daquela versão"
    Given que existem versões anteriores da edição
    When o redator restaura uma versão
    Then o sistema deve recuperar o conteúdo daquela versão
