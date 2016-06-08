(function () {
  "use strict";

  angular.module("app").controller("squirell_sitings_ctrl", function($scope, $http) {

  $scope.setup = function() {
    $http.get("/api/v1/squirells.json").then(function(response) {
      $scope.squirells = response.data;
    });
  }


    $scope.addSquirell = function(squirell_type, description, location, date) {
    var squirell = {squirell_type: squirell_type, description: description, location: location, date: date}
    $http.post('/api/v1/squirells.json', squirell).then(function(response) {
      $scope.squirells.push(response.data);
      alert("dangerous squirell added!");
   }, function(error) {
      $scope.errors = error.data.errors;
    });
  }



  $scope.deleteSquirell = function(squirell) {
    $http.delete('/api/v1/squirells/' + squirell.id + '.json').then(function(response) {
     var index = $scope.squirells.indexOf(squirell);
         $scope.squirells.splice(index, 1);
      alert("dangerous squirell deleted!");
    });
  }



  window.$scope = $scope;
  });
})();