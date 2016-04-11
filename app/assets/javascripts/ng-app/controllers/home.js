angular.module('AngularRails')
  .controller('HomeCtrl', function($scope, $resource){
    Todo = $resource('/todos/:id', {id: "@id"})

    $scope.todos = Todo.query();

    $scope.addTodo = function(){
      todo = Todo.save($scope.newTodo);
      $scope.todos.push(todo);
      $scope.newTodo = {};
    };

    $scope.deleteTodo = function(todoId){
      Todo.delete({id: todoId}, function(){
        $scope.todos = Todo.query();

      });
    };
  });
