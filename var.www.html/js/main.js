var domain = document.location.host;

var boshUrl = 'http://' + domain + ':7070/http-bind/';

var xmppDomain = "JsxcOpenfireDokerImage";

var xmppResource = "jsxcExampleClient";

var webAdminUrl = "http://" + domain + ":9090/";
var etherpadUrl = "http://" + domain + ":9001/";

$(function() {

  console.log("Initialisation");

  // initialisation de JSXC
  jsxc.init({
    loadSettings : function() {
      return {
        xmpp : {
          url : boshUrl,
          domain : xmppDomain,
          resource : xmppResource,
          overwrite : true,
          onlogin : true
        }
      };
    }, root : 'jsxc'
  });

  $('#connexionButton').click(jsxc.gui.showLoginBox);

  $('#openPad').click(function(){
    window.open(etherpadUrl + "p/" + $('#padName').val());
  });

  var appendToParamDisplay = function(label, target) {
    $('#informationsBlock').append(
        '<div>' + label + ': <a href="' + target + '" target="_blank">' + target + '</a></div>');
  };

  appendToParamDisplay('HTTP domain', domain);
  appendToParamDisplay('XMPP domain', xmppDomain);
  appendToParamDisplay('XMPP client name', xmppResource);
  appendToParamDisplay('Openfire web admin page', webAdminUrl);
  appendToParamDisplay('Etherpad', etherpadUrl);

});

