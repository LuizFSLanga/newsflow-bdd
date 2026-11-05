# language: pt

Funcionalidade: Aprovar ou reprovar edição
  Como revisor
  Quero analisar e aprovar ou reprovar uma edição
  Para garantir a qualidade do conteúdo enviado

  Contexto:
    Dado que existe uma edição aguardando aprovação

  Cenário: Aprovar edição
    Quando o revisor aprova a edição
    Então o sistema deve marcar a edição como aprovada

  Cenário: Impedir que o autor aprove a própria edição
    Dado que o usuário é o autor da edição
    Quando ele tenta aprovar sua própria edição
    Então o sistema deve impedir a aprovação

  Cenário: Reprovar edição
    Quando o revisor reprova a edição informando um comentário
    Então o sistema deve retornar a edição para rascunho
    E disponibilizar o comentário para o redator

  Cenário: Impedir reprovação sem comentário
    Quando o revisor tenta reprovar uma edição sem informar um comentário
    Então o sistema deve impedir a reprovação
