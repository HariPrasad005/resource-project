var app = angular.module('app', []);

app.controller('index', ["$scope", function($scope) {
    $scope.services = [
        {
            name: 'Sedan',
            price: 300,
            active: false
        },
        {
            name: 'Hatch Back',
            price: 30,
            active: false
        },
        {
            name: 'Suv',
            price: 120,
            active: false
        },
        {
            name: 'Off Road',
            price: 400,
            active: false
        },
        {
            name: 'Limosine',
            price: 400,
            active: false
        }
    ];

    $scope.toggleActive = function(service) {
        service.active = !service.active;
    };

    $scope.total = function() {
        var total = 0;
        angular.forEach($scope.services, function(el) {
            if(el.active) {
                total += el.price;
            }
        });
        return total;
    };

}]);