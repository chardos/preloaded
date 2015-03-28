# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

angular.module("myapp", []).controller "HelloController", ($scope) ->
  $scope.money = {}
  $scope.money.inputAmount = 200
  $scope.money.outputAmount = 400
  $scope.changeInput = () ->
    $scope.money.outputAmount = $scope.money.inputAmount * 2
  $scope.changeOutput = () ->
    $scope.money.inputAmount = $scope.money.outputAmount / 2