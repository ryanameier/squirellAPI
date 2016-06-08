angular.module("app").filter('suspicious', [function () {
  return function(squirells){
    if (squirells) {
      var result = []
      for (i = 0; i < squirells.length; i++) { 
        result.push(squirells[i]);
      }
              return result;
    }
  }



}]);