
// le domaine de la page
var domain =  document.location.host;

// service XMPP / HTTP
var boshUrl =  'http://' + domain + ':7070/http-bind/';

// domaine xmpp (différent du domaine de la page)
var xmppDomain = "JsxcOpenfireDokerImage";

// nom du client
var xmppResource = "jsxcExampleClient";

var webAdminUrl = "http://" + domain + ":9090/";
var consoleAdminUrl = "http://" + domain + ":9091/";
var etherpadUrl = "http://" + domain + ":9001/";

$(function() {

    console.log("Initialisation");

    // activer les panneau Jquery UI du fichier index
    $( "#tabs" ).tabs();


    // initialisation de JSXC
    jsxc.init({
      loadSettings: function() {
        return {xmpp: {
          url: boshUrl,
             domain: xmppDomain,
             resource: xmppResource,
             overwrite: true,
             onlogin: true
        }};
      },
      root: 'jsxc'
    });

    // Ouverture d'une popup pour connexion
    $('#connexionButton').click(jsxc.gui.showLoginBox);

    // afficher les comptes disponibles
    var appendToAccounts = function(name, elmt){
        $('#availablesAccounts').append("<tr><td>" + (name || '') + "</td><td>" + elmt + "</td><tr/>");
    };

    appendToAccounts('admin', '*');
    appendToAccounts('yohann', '*');
    appendToAccounts('miguel', '*');
    appendToAccounts('aurore', '*');
    appendToAccounts('nicolas', '*');
    appendToAccounts('david', '*');
    appendToAccounts('jean', '*');
    appendToAccounts('julescesar', '*');
    appendToAccounts('kazoi', '*');
    appendToAccounts('paul', '*');
    appendToAccounts('zezette', '*');
    appendToAccounts('compagnioncube', '*');

    // afficher les paramètres utilisés
    var appendToParamDisplay = function(name, elmt){
        $('#infoDisplay').append("<tr><td>" + (name || '') + "</td><td>" + elmt + "</td><tr/>");
    };

    appendToParamDisplay('Domaine utilisé', domain);
    appendToParamDisplay('Domaine XMPP utilisé', xmppDomain);
    appendToParamDisplay('Nom XMPP du client', xmppResource);
    appendToParamDisplay('Administration web Openfire',
        '<a target="_blank" href="' + webAdminUrl + '">' + webAdminUrl + '</a>');
    appendToParamDisplay('Administration console Openfire',
        '<a target="_blank" href="' + consoleAdminUrl + '">' + consoleAdminUrl + '</a>');
    appendToParamDisplay('Etherpad',
        '<a target="_blank" href="' + etherpadUrl + '">' + etherpadUrl + '</a>');

});

