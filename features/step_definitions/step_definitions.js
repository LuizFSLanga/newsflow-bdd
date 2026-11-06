module.exports = function () {
    this.Before(function (scenario) {
        this.actionwords = Object.create(require('./actionwords.js').Actionwords);
    });

    this.After(function (scenario) {
        this.actionwords = null;
    });



    this.When(/^tento reprovar uma edição sem informar um comentário$/, function (callback) {
        this.actionwords.tentoReprovarUmaEdicaoSemInformarUmComentario();
        callback();
    });

    this.Then(/^o sistema deve impedir a reprovação$/, function (callback) {
        this.actionwords.oSistemaDeveImpedirAReprovacao();
        callback();
    });

    this.When(/^aprovo a edição$/, function (callback) {
        this.actionwords.aprovoAEdicao();
        callback();
    });

    this.Then(/^o sistema deve marcar a edição como aprovada$/, function (callback) {
        this.actionwords.oSistemaDeveMarcarAEdicaoComoAprovada();
        callback();
    });

    this.Given(/^sou o autor da edição$/, function (callback) {
        this.actionwords.souOAutorDaEdicao();
        callback();
    });

    this.When(/^tento aprovar sua própria edição$/, function (callback) {
        this.actionwords.tentoAprovarSuaPropriaEdicao();
        callback();
    });

    this.Then(/^o sistema deve impedir a aprovação$/, function (callback) {
        this.actionwords.oSistemaDeveImpedirAAprovacao();
        callback();
    });

    this.When(/^reprovo a edição informando um comentário$/, function (callback) {
        this.actionwords.reprovoAEdicaoInformandoUmComentario();
        callback();
    });

    this.Then(/^o sistema deve retornar a edição para rascunho$/, function (callback) {
        this.actionwords.oSistemaDeveRetornarAEdicaoParaRascunho();
        callback();
    });

    this.Then(/^disponibilizar o comentário para o redator$/, function (callback) {
        this.actionwords.disponibilizarOComentarioParaORedator();
        callback();
    });

    this.Given(/^sou revisor$/, function (callback) {
        this.actionwords.souRevisor();
        callback();
    });

    this.Given(/^que existe uma edição aguardando aprovação$/, function (callback) {
        this.actionwords.queExisteUmaEdicaoAguardandoAprovacao();
        callback();
    });

    this.Given(/^que existe uma edição em rascunho$/, function (callback) {
        this.actionwords.queExisteUmaEdicaoEmRascunho();
        callback();
    });

    this.Given(/^que existe uma edição aprovada$/, function (callback) {
        this.actionwords.queExisteUmaEdicaoAprovada();
        callback();
    });

    this.When(/^passam 30 segundos$/, function (callback) {
        this.actionwords.passam30Segundos();
        callback();
    });

    this.Then(/^o sistema deve salvar automaticamente a edição$/, function (callback) {
        this.actionwords.oSistemaDeveSalvarAutomaticamenteAEdicao();
        callback();
    });

    this.Then(/^gerar uma nova versão numerada$/, function (callback) {
        this.actionwords.gerarUmaNovaVersaoNumerada();
        callback();
    });

    this.Given(/^que a edição possui 20 versões salvas$/, function (callback) {
        this.actionwords.queAEdicaoPossui20VersoesSalvas();
        callback();
    });

    this.When(/^uma nova versão é salva$/, function (callback) {
        this.actionwords.umaNovaVersaoESalva();
        callback();
    });

    this.Then(/^o sistema deve manter somente as 20 versões mais recentes$/, function (callback) {
        this.actionwords.oSistemaDeveManterSomenteAs20VersoesMaisRecentes();
        callback();
    });

    this.Given(/^que existem versões anteriores da edição$/, function (callback) {
        this.actionwords.queExistemVersoesAnterioresDaEdicao();
        callback();
    });

    this.When(/^o redator restaura uma versão$/, function (callback) {
        this.actionwords.oRedatorRestauraUmaVersao();
        callback();
    });

    this.Then(/^o sistema deve recuperar o conteúdo daquela versão$/, function (callback) {
        this.actionwords.oSistemaDeveRecuperarOConteudoDaquelaVersao();
        callback();
    });

    this.When(/^agendo o envio para daqui a <minutos> minutos$/, function (callback) {
        this.actionwords.agendoOEnvioParaDaquiAMinutosMinutos();
        callback();
    });

    this.Then(/^o sistema deve apresentar a mensagem "(.*)"$/, function (p1, callback) {
        this.actionwords.oSistemaDeveApresentarAMensagemP1(p1);
        callback();
    });

    this.Given(/^sou gestor$/, function (callback) {
        this.actionwords.souGestor();
        callback();
    });

    this.Given(/^que o envio já foi reagendado <vezes> vezes$/, function (callback) {
        this.actionwords.queOEnvioJaFoiReagendadoVezesVezes();
        callback();
    });

    this.When(/^solicito um novo reagendamento$/, function (callback) {
        this.actionwords.solicitoUmNovoReagendamento();
        callback();
    });

    this.Given(/^que existe um envio agendado para daqui a 10 minutos$/, function (callback) {
        this.actionwords.queExisteUmEnvioAgendadoParaDaquiA10Minutos();
        callback();
    });

    this.When(/^solicito o cancelamento$/, function (callback) {
        this.actionwords.solicitoOCancelamento();
        callback();
    });

    this.Then(/^o sistema deve cancelar o envio$/, function (callback) {
        this.actionwords.oSistemaDeveCancelarOEnvio();
        callback();
    });

    this.Given(/^que um assinante já recebeu 2 newsletters na semana$/, function (callback) {
        this.actionwords.queUmAssinanteJaRecebeu2NewslettersNaSemana();
        callback();
    });

    this.When(/^uma nova newsletter é destinada a esse assinante$/, function (callback) {
        this.actionwords.umaNovaNewsletterEDestinadaAEsseAssinante();
        callback();
    });

    this.Then(/^o sistema deve colocar o envio na fila da semana seguinte$/, function (callback) {
        this.actionwords.oSistemaDeveColocarOEnvioNaFilaDaSemanaSeguinte();
        callback();
    });

    this.Given(/^sou assinante$/, function (callback) {
        this.actionwords.souAssinante();
        callback();
    });

    this.When(/^solicito o descadastro pelo link do e-mail$/, function (callback) {
        this.actionwords.solicitoODescadastroPeloLinkDoEmail();
        callback();
    });

    this.Then(/^o sistema deve interromper imediatamente os novos envios$/, function (callback) {
        this.actionwords.oSistemaDeveInterromperImediatamenteOsNovosEnvios();
        callback();
    });

    this.Then(/^enviar um e-mail de confirmação$/, function (callback) {
        this.actionwords.enviarUmEmailDeConfirmacao();
        callback();
    });

    this.When(/^solicito o retorno à lista de assinantes e confirmo a inscrição pelo link recebido por e-mail$/, function (callback) {
        this.actionwords.solicitoORetornoAListaDeAssinantesEConfirmoAInscricaoPeloLinkRecebidoPorEmail();
        callback();
    });

    this.Then(/^o sistema deve reativar a inscrição$/, function (callback) {
        this.actionwords.oSistemaDeveReativarAInscricao();
        callback();
    });

    this.Given(/^que o link de confirmação foi enviado há mais de 48 horas$/, function (callback) {
        this.actionwords.queOLinkDeConfirmacaoFoiEnviadoHaMaisDe48Horas();
        callback();
    });

    this.When(/^tento utilizá-lo$/, function (callback) {
        this.actionwords.tentoUtilizalo();
        callback();
    });

    this.Then(/^o sistema deve rejeitar a confirmação$/, function (callback) {
        this.actionwords.oSistemaDeveRejeitarAConfirmacao();
        callback();
    });

    this.Given(/^que um e-mail não foi entregue$/, function (callback) {
        this.actionwords.queUmEmailNaoFoiEntregue();
        callback();
    });

    this.When(/^todas as 3 tentativas de entrega forem realizadas sem sucesso$/, function (callback) {
        this.actionwords.todasAs3TentativasDeEntregaForemRealizadasSemSucesso();
        callback();
    });

    this.Then(/^o sistema deve marcar a entrega como falha definitiva$/, function (callback) {
        this.actionwords.oSistemaDeveMarcarAEntregaComoFalhaDefinitiva();
        callback();
    });

    this.Given(/^que um endereço de e-mail apresentou hard bounce$/, function (callback) {
        this.actionwords.queUmEnderecoDeEmailApresentouHardBounce();
        callback();
    });

    this.When(/^o sistema identifica a falha permanente$/, function (callback) {
        this.actionwords.oSistemaIdentificaAFalhaPermanente();
        callback();
    });

    this.Then(/^o endereço deve ser removido da base de assinantes$/, function (callback) {
        this.actionwords.oEnderecoDeveSerRemovidoDaBaseDeAssinantes();
        callback();
    });

    this.Given(/^que um endereço de e-mail apresentou soft bounce$/, function (callback) {
        this.actionwords.queUmEnderecoDeEmailApresentouSoftBounce();
        callback();
    });

    this.When(/^o sistema identifica a falha temporária$/, function (callback) {
        this.actionwords.oSistemaIdentificaAFalhaTemporaria();
        callback();
    });

    this.Then(/^o endereço deve permanecer na base de assinantes$/, function (callback) {
        this.actionwords.oEnderecoDevePermanecerNaBaseDeAssinantes();
        callback();
    });
}
