## US01 — Salvar rascunho automaticamente

**Como** redator(a),  
**Quero** que meu texto seja salvo automaticamente enquanto escrevo,  
**Para** não perder meu trabalho caso ocorra uma desconexão ou fechamento inesperado da plataforma.  

**Critérios de aceitação**
- O rascunho deve ser salvo automaticamente a cada 30 segundos.
- Cada salvamento deve gerar uma nova versão numerada.
- O sistema deve manter as últimas 20 versões da edição.
- O redator deve poder restaurar qualquer uma das versões armazenadas.

**Regras cobertas:** RN01  
**Prioridade:** Média — reduz o risco de perda de conteúdo durante a produção das newsletters.  
**Cenários:** features/us01-rascunho.feature    



## US02 — Aprovar edição

**Como** revisor(a),  
**Quero** analisar e aprovar ou reprovar uma edição antes do envio,  
**Para** garantir que somente newsletters revisadas sejam encaminhadas aos assinantes.  

**Critérios de aceitação**
- O sistema deve permitir que o revisor aprove ou reprove uma edição.
- O autor de uma edição não pode aprovar a própria edição.
- O envio ou agendamento de uma edição exige a aprovação de um revisor.
- Ao reprovar uma edição, o revisor deve informar um comentário obrigatório, e a edição deve retornar ao estado de rascunho.

**Regras cobertas:** RN02  
**Prioridade:** Alta — garante a qualidade e a confiabilidade dos conteúdos enviados.  
**Cenários:** features/us02-aprovacao.feature    



## US03 — Agendar envio de newsletter

**Como** gestor(a),  
**Quero** definir a data e o horário de envio de uma edição,  
**Para** organizar a distribuição das newsletters aos assinantes.  

**Critérios de aceitação**
- O sistema deve permitir agendar um envio com pelo menos 15 minutos de antecedência, considerando o fuso horário America/Sao_Paulo.
- O gestor pode reagendar um envio até 2 vezes.
- O gestor pode cancelar um envio até 5 minutos antes do horário agendado.
- Cada assinante deve receber no máximo 2 newsletters por semana. Envios excedentes devem ser colocados na fila da semana seguinte.
- E-mails transacionais não devem ser contabilizados no limite semanal de newsletters.

**Regras cobertas:** RN03 e RN05  
**Prioridade:** Alta — organiza os disparos e evita o envio excessivo de newsletters aos assinantes.  
**Cenários:** features/us03-agendamento.feature  



## US04 — Gerenciar inscrição e entrega de e-mails

**Como** assinante,  
**Quero** controlar minha inscrição e receber confirmação sobre minhas solicitações,  
**Para** ter controle sobre os e-mails que recebo e evitar comunicações indesejadas.  

**Critérios de aceitação**
- Todo e-mail deve apresentar um link de descadastro, cuja solicitação deve ter efeito imediato e gerar uma confirmação por e-mail.
- O retorno à lista de assinantes deve exigir dupla confirmação por e-mail, com validade de 48 horas para o link de confirmação.
- O sistema deve realizar até 3 tentativas de entrega, respeitando os intervalos de 5, 15 e 45 minutos. Após a terceira tentativa sem sucesso, a entrega deve ser marcada como falha definitiva.
- Endereços que apresentarem hard bounce devem ser removidos da base de assinantes, enquanto endereços com soft bounce devem ser mantidos.

**Regras cobertas:** RN06 e RN07  
**Prioridade:** Alta — respeita as escolhas dos assinantes e melhora a confiabilidade das entregas.  
**Cenários:** features/us04-inscricao-entrega.feature  
