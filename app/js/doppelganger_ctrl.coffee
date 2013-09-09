App.controller 'DoppelgangerCtrl', ['$scope', 'sharedService', ($scope, sharedService) ->
  $scope.$on 'Broadcast', ->
    $scope.monsterName = "Doppelganger:  " + sharedService.monsterName
]

