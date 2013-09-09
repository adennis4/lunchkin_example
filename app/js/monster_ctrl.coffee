App.controller 'MonsterCtrl', ['$scope', 'sharedService', ($scope, sharedService) ->
  $scope.submitMonster = (name) ->
    sharedService.prepForBroadcast name
    $scope.monster = ''

  $scope.$on 'Broadcast', ->
    $scope.monsterName = "Original Monster:  " + sharedService.monsterName
]
