# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

angular.module("myapp", []).controller "CalculatorController", ["$scope", ($scope) ->
  $scope.money = {}
  $scope.money.inputAmount = 200
  $scope.money.outputAmount = 0
  $scope.money.inputAmountCurrency = 'EUR'
  $scope.updateCurrency = () ->
    if $scope.money.inputAmountCurrency == 'EUR'
      $scope.money.exchangeRate = 1.40
    if $scope.money.inputAmountCurrency == 'USD'
      $scope.money.exchangeRate = 3
    if $scope.money.inputAmountCurrency == 'CNY'
      $scope.money.exchangeRate = 4
  $scope.recalculate = () ->
    $scope.money.ourFees = $scope.money.inputAmount * 0.03
    $scope.money.westernUnionFees = $scope.money.inputAmount * 0.05 + 5
    $scope.money.NABFees = $scope.money.inputAmount * 0.04 + 4
    $scope.money.commonwealthFees = $scope.money.inputAmount * 0.06 + 8
    $scope.money.savedAmount = $scope.money.commonwealthFees - $scope.money.ourFees


  $scope.changeInput = () ->
    $scope.updateCurrency()
    $scope.money.outputAmount = (parseFloat($scope.money.inputAmount) * $scope.money.exchangeRate).toFixed(2)
    $scope.recalculate()
  $scope.changeOutput = () ->
    $scope.updateCurrency()
    $scope.money.inputAmount = (parseFloat($scope.money.outputAmount) / $scope.money.exchangeRate).toFixed(2)
    $scope.recalculate()

  $scope.changeInput();
]

$(document).on 'ready', ->
  $('.js-find-out').on 'click', ->
    $('html, body').animate scrollTop: '700px'
    return
  return

