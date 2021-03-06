// Generated by CoffeeScript 1.6.3
var AngularRgb2Hex;

AngularRgb2Hex = angular.module("AngRgb2Hex", ["ui.router"]);

AngularRgb2Hex.config([
  '$stateProvider', '$urlRouterProvider', function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('');
    $stateProvider.state('home', {
      url: '',
      templateUrl: 'public/views/hex2rgb.html',
      controller: 'ConverterCtrl'
    }).state('about', {
      url: '/about',
      templateUrl: 'public/views/about.html'
    }).state('contact', {
      url: '/contact',
      templateUrl: 'public/views/contact.html'
    });
  }
]);

AngularRgb2Hex.controller('footerCtrl', [
  '$scope', function($scope) {
    return $scope.sCurrentYear = (new Date()).getFullYear();
  }
]);
