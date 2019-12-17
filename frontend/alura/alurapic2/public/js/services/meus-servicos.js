angular.module('meusServicos', ['ngResource'])
  .factory('recursoFoto', function($resource) {

    return $resource('/v1/fotos/:fotoId', null, {
      'update': {
        method: 'PUT'
      }
    });
  })

  .factory('cadatroDeFotos', function(recursoFoto, $q) {
    var service = {}
    service.cadastrar = function(foto) {
      return $q(function(resolve, reject) {
        
        if(foto._id) {
          recursoFoto.update({fotoId: foto._id}, foto, function() {
            resolve({
              mensagem: 'Foto' + foto.titulo + 'atualizada com sucesso',
              inclusao: false
            });
          })
        }
      });
    };
    return service;
  });