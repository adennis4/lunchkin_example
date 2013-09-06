window.App = angular.module('LunchkinApp', [])

App.controller 'MonsterCtrl', ['$scope', 'sharedService', ($scope, sharedService) ->
  $scope.submitMonster = (name) ->
    sharedService.prepForBroadcast name
    $scope.monster = ''

  $scope.$on 'Broadcast', ->
    $scope.monsterName = "Original Monster:  " + sharedService.monsterName
   ]

 App.controller 'DoppelgangerCtrl', ['$scope', 'sharedService', ($scope, sharedService) ->
   $scope.$on 'Broadcast', ->
     $scope.monsterName = "Doppelganger:  " + sharedService.monsterName
 ]

 App.factory 'sharedService', ($rootScope) ->
   sharedService = {}
   sharedService.monsterName = ''

   sharedService.prepForBroadcast = (name) ->
     @monsterName = name
     @broadcastName()

   sharedService.broadcastName = ->
     $rootScope.$broadcast('Broadcast')

   sharedService
