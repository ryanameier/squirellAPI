(function () {
  "use strict";

  angular.module("app").controller("squirell_sitings_ctrl", function($scope, $http) {

  $scope.setup = function() {
    $http.get("/api/v1/squirells.json").then(function(response) {
      $scope.squirells = response.data;
    });
    console.log("hey what's up?");
  }

  $scope.addSquirell = function(squirell_type, description) {
    var squirell = {
      squirell_type: squirell_type,
      description: description,

    }
    $scope.squirell.push(squirell);
  }

  $scope.toggleDescription = function(squirell) {
    squirell.descriptionVisible = !squirell.descriptionVisible;
  }

  $scope.deleteSquirell = function(index) {
    $scope.squirell.splice(index, 1);
  }


  window.$scope = $scope;
  });
})();