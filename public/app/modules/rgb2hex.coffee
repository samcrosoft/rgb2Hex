# create the module needed
AngularRgb2Hex = angular.module "AngRgb2Hex", ["ui.router"]

AngularRgb2Hex.config(['$stateProvider', '$urlRouterProvider',($stateProvider, $urlRouterProvider) ->



#  $urlRouterProvider.when('/about', '/about')
  $urlRouterProvider.otherwise('')


  $stateProvider
  .state 'home',
        url: '',
        templateUrl: 'public/views/hex2rgb.html'
        controller : 'ConverterCtrl'

  .state 'about',
        url : '/about',
        templateUrl : 'public/views/about.html'

  .state 'contact',
    url : '/contact',
    templateUrl : 'public/views/contact.html'


  return
])