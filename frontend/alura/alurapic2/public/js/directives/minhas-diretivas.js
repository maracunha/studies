angular.module('minhasDiretivas', [])
  .directive('meuPainel', function() {
    var ddo = {}; //directive definition object (DDO)

    ddo.restrict = "AE"; //E*lemento, *Atributo ou C*omentário
    ddo.transclude = true; 

    ddo.scope = {
      titulo:'@' //@ indica que estamos copiando o valor como string
    };

    ddo.templateUrl = 'js/directives/meu-painel.html'

    return ddo; 

  })

  .directive('minhaFoto', function() {
    var ddo = {};

    ddo.restrict = "AE"
    ddo.scope = {
      url: '@',
      titulo: '@' 
    };

    ddo.template = '<img ng-src="{{url}}" alt="{{titulo}}" class="img-responsive center-block">'

    return ddo;
  })

  .directive('meuBotaoPerigo', function() {
    var ddo = {};
    ddo.restrict = "E";
    ddo.scope = {
      nome: '@',
      acao: '&'
    }
    ddo.template = '<button class="btn btn-danger btn-block" ng-click="acao()">{{nome}}</button>';

    return ddo;
  })

  .directive('meuFocus', function() {
    var ddo = {};
    ddo.restrict = "A";
    ddo.scope = {
      focado: '=' //  o =, que criará uma relação bidirecional
    };
    ddo.link = function(scope, element) {
      scope.$watch('focado', function() {
        if (scope.focado) {
          element[0].focus();
          scope.focado = false;
        }
      });
    };
    return ddo;
  })