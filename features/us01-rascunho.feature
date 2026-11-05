# language: pt

Funcionalidade: Salvar rascunho automaticamente
  Como redator
  Quero que meu texto seja salvo automaticamente
  Para não perder meu trabalho

  Contexto:
    Dado que existe uma edição em rascunho

  Cenário: Salvar edição automaticamente
    Quando passam 30 segundos
    Então o sistema deve salvar automaticamente a edição
    E gerar uma nova versão numerada

  Cenário: Manter as últimas 20 versões
    Dado que a edição possui 20 versões salvas
    Quando uma nova versão é salva
    Então o sistema deve manter somente as 20 versões mais recentes

  Cenário: Restaurar uma versão anterior
    Dado que existem versões anteriores da edição
    Quando o redator restaura uma versão
    Então o sistema deve recuperar o conteúdo daquela versão
