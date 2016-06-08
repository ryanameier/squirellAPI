angular.module("suspiciousSquirells", []).filter('suspicious', [function () {
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

// any filters you want can be added to the above code, right now it is just looping and pushing through all
// but it can be updated to filter specific items here. The suspicious is being called upon inside other tables
// any dependencys would be added to the empty backet inside modules