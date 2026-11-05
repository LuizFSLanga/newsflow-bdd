# language: pt

Funcionalidade: Agendar envio de newsletter
  Como gestor
  Quero agendar o envio de uma edição aprovada
  Para organizar a distribuição das newsletters

  Contexto:
    Dado que existe uma edição aprovada

  Esquema do Cenário: Verificar antecedência mínima para agendar
    Quando o gestor agenda o envio para daqui a <minutos> minutos
    Então o sistema deve apresentar a mensagem "<mensagem>"

    Exemplos:
      | minutos | mensagem                                      |
      | 60      | Envio agendado                                |
      | 16      | Envio agendado                                |
      | 15      | Envio agendado                                |
      | 14      | O envio precisa de ao menos 15 minutos        |
      | 0       | O envio precisa de ao menos 15 minutos        |

  Esquema do Cenário: Verificar limite de reagendamentos
    Dado que o envio já foi reagendado <vezes> vezes
    Quando o gestor solicita um novo reagendamento
    Então o sistema deve apresentar a mensagem "<mensagem>"

    Exemplos:
      | vezes | mensagem                                  |
      | 0     | Reagendamento realizado                  |
      | 1     | Reagendamento realizado                  |
      | 2     | Limite de reagendamentos atingido        |

  Cenário: Cancelar envio dentro do prazo permitido
    Dado que existe um envio agendado para daqui a 10 minutos
    Quando o gestor solicita o cancelamento
    Então o sistema deve cancelar o envio

  Cenário: Respeitar limite semanal de newsletters
    Dado que um assinante já recebeu 2 newsletters na semana
    Quando uma nova newsletter é destinada a esse assinante
    Então o sistema deve colocar o envio na fila da semana seguinte
