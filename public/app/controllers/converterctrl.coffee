AngularRgb2Hex.controller "ConverterCtrl", ["$window", "$scope", '$rootScope', ($window, $scope, $rootScope) ->
  $scope.model =
    aRGB :
      iRed : 100
      iGreen : 200
      iBlue : 300
  sHexResult : ''

  $rootScope.sCurYear = (new Date()).getFullYear()

  $scope.componentToHex = (iColor = 0) ->
    iColor = parseInt(iColor,10)
    iColor = if iColor then iColor else 0
    sHex = iColor.toString(16).slice(-2)
    return if sHex.length is 1 then "0#{sHex}" else sHex

  $scope.rgbToHex = (r=0,g=0,b= 0)->
    return "#" + $scope.componentToHex(r) + $scope.componentToHex(g) + $scope.componentToHex(b);


  $scope.applyRgbToHex = ()->
    sHexColor = $scope.rgbToHex $scope.model.aRGB.iRed, $scope.model.aRGB.iGreen, $scope.model.aRGB.iBlue
    oBody = angular.element("body")
    oBody.css 'background-color': sHexColor
    $scope.model.sHexResult = "#{sHexColor}"
#    $log.log "the color is #{sHexColor}"
    return

  $scope.$watch 'model.aRGB.iRed', (oNewVal, oOldVal) ->
    $scope.applyRgbToHex()
    return

  $scope.$watch 'model.aRGB.iGreen', (oNewVal, oOldVal) ->
    $scope.applyRgbToHex()
    return

  $scope.$watch 'model.aRGB.iBlue', (oNewVal, oOldVal) ->
    $scope.applyRgbToHex()
    return

  return
]