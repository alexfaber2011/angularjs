myApp = angular.module("myApp", [])

MessagesController = ($scope, $http) ->
  $http.get("/mongodb://anonRead:anonymousRead@linus.mongohq.com:10077/anonymous_twillio/my_app_messages").success((data, status, headers, config) ->
    console.log "Success: ", data
  ).error (data, status, headers, config) ->
    console.log "Error: ", data

myApp.controller('MessagesController', MessagesController)

