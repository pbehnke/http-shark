window.Shark = angular.module('shark', ['ngRoute', 'btford.socket-io'])

Shark.config ($routeProvider) ->
  $routeProvider
    .when '/proxies',
      template: 'proxies'

    .when '/proxies/add',
      template: 'add'

    .when '/proxies/update/:proxyId',
      template: 'update'

    .when '/trace',
      controller: 'TracesCtrl'
      templateUrl: 'views/traces.html'

    .otherwise
      redirectTo: '/trace'
