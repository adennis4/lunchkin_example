App.factory 'sharedService', ($rootScope) ->
  sharedService = {}
  sharedService.monsterName = ''

  sharedService.prepForBroadcast = (name) ->
    @monsterName = name
    @broadcastName()

  sharedService.broadcastName = ->
    $rootScope.$broadcast('Broadcast')

  sharedService
