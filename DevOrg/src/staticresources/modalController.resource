suntrustApp.controller('dashboardController', function($scope, $uibModal, $log) {
    $scope.popup = {editProfile : false, editContact : false, editApplication : false};
    $scope.applicationsteps = {step1 : true, step2 : false, step3 : false};
    $scope.isAllSelected = true;
    $scope.steps_toogle = function(step){
        if(step){

            $scope.applicationsteps.step1 = false;
            $scope.applicationsteps.step2 = false;
            $scope.applicationsteps.step3 = false;
            $scope.applicationsteps[step] = true;
        }
        else{

            angular.forEach($scope.applications, function(application){
               if(application.selected  == false){
                    $scope.isAllSelected = false;
                    return;
               }
            });
            if($scope.isAllSelected == true){
                $scope.applicationsteps.step1 = false;
                $scope.applicationsteps.step2 = true;
                $scope.applicationsteps.step3 = false;
            }
        }
    };
    $scope.templateUrl =  'myPopoverTemplate.html';
    $scope.applications = [{heading: 'SunView Treasury Manager', subHeading:'Added Mar 16, 2015 by John smith', selected:true},
    {heading: 'Online Cash Manager', subHeading:'Added Mar 16, 2015 by John xsith', selected:true},
    {heading: 'dfsffdsfsf', subHeading:'fdjhgdfjghdfh', selected:true}];

    $scope.applicationsCopy = angular.copy($scope.applications);
    $scope.cancelChanges = function(){
        $scope.applications = angular.copy($scope.applicationsCopy);
    };

    // for bottom Success message starts

    $scope.showme = false;

    //$scope.setupAutoHide = function(){
    //    $scope.showme = true;
    //    $timeout(function(){
    //    $scope.showme = false;
    //    },5000);
    //};
    // for bottom Success message ends

    // user id Autocomplete dropdown starts
    $scope.selected = undefined;
    $scope.statesWithFlags =
        [{'name':'JohnAcme23'},
        {'name':'JohnAcme22'},
        {'name':'JohnAcme21'}
    ];
    // user id Autocomplete dropdown ends

    // user id popover starts
    $scope.dynamicPopover = {
        content: 'User ID:',
        templateUrl: 'myPopoverTemplate.html',
        title: 'Title'
    };
    $scope.user = {userId:''};
    $scope.verifyLetterNumber = function(){
        var lettersRegex = /.*[a-zA-Z]+.*/;
        var numberRegex = /^(?=.*\d).+$/;
        return lettersRegex.test($scope.user.userId) && numberRegex.test($scope.user.userId);
    };
    $scope.verifySpaces = function(){
        if(!$scope.user.userId)
            return true;
        return $scope.user.userId && $scope.user.userId.includes(' ');
    };
    $scope.specialCharCheck = function(){
        if(!$scope.user.userId)
            return true;
        var regex = /[~`!#$%\^&*+=\-\[\]\\';,/{}|\\":<>\?]/;
        return regex.test($scope.user.userId);
    };

    $scope.checkError = function(){
        return $scope.user.userId && $scope.user.userId.length>=8 && $scope.user.userId.length<=20 && $scope.verifyLetterNumber() && !$scope.verifySpaces() && !$scope.specialCharCheck() && $scope.verifyUnique();
    }


    $scope.verifyUnique = function(){
     var unique = true;
     angular.forEach($scope.statesWithFlags, function(state){
      if($scope.user.userId && state.name.toLowerCase().includes($scope.user.userId.toLowerCase())){
       unique = false;
      }
     });
    if(!$scope.user.userId)
        unique = false;
     return unique;
    };


    // user id popover ends

});



suntrustApp.controller('applicationController', function($scope){
    $scope.applications = [
        {"applicationName":"Online Check Deposit","dateAdded":"October 16, 2015","totalUsers":80},
        {"applicationName":"SunView Treasury Manager","dateAdded":"June 19, 2015","totalUsers":90},
        {"applicationName":"SunView Treasury Manager","dateAdded":"December 16, 2015","totalUsers":80},
        {"applicationName":"Online Cash Manager","dateAdded":"August 17, 2015","totalUsers":41},
        {"applicationName":"SunView Treasury Manager","dateAdded":"July 10, 2015","totalUsers":82}
    ];
    $scope.predicate = 'name';
    $scope.reverse = true;
    $scope.order = function(predicate) {
        $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;
        $scope.predicate = predicate;
    };
});


suntrustApp.controller('ModalDemoCtrl', function ($scope, $uibModal, $log) {
    $scope.animationsEnabled = true;

    $scope.open = function (size) {
        var modalInstance = $uibModal.open({
            animation: $scope.animationsEnabled,
            templateUrl: 'myModalContent.html',
            controller: 'ModalInstanceCtrl',
            backdrop: 'static',
            size: size,
            resolve: {
                items: function () {
                    return $scope.items;
                }
            }
        });
        modalInstance.result.then(function (selectedItem) {
            $scope.selected = selectedItem;
        }, function () {
            $log.info('Modal dismissed at: ' + new Date());
        });
    };

    $scope.readdUserModal = function (size) {
        var modalInstance = $uibModal.open({
            animation: $scope.animationsEnabled,
            templateUrl: 'readdUserModalContent.html',
            controller: 'ModalInstanceCtrl',
            backdrop: 'static',
            size: size,
            resolve: {
                items: function () {
                    return $scope.items;
                }
            }
        });
        modalInstance.result.then(function (selectedItem) {
        }, function () {
            $log.info('Modal dismissed at: ' + new Date());
        });
    };

    $scope.resetPasswordModal = function (size) {
        var modalInstance = $uibModal.open({
            animation: $scope.animationsEnabled,
            templateUrl: 'resetPasswordModalContent.html',
            controller: 'ModalInstanceCtrl',
            backdrop: 'static',
            size: size,
            resolve: {
                items: function () {
                    return $scope.items;
                }
            }
        });
        modalInstance.result.then(function (selectedItem) {
        }, function () {
            $log.info('Modal dismissed at: ' + new Date());
        });
    };

    $scope.removeUserModal = function (size) {
        var modalInstance = $uibModal.open({
            animation: $scope.animationsEnabled,
            templateUrl: 'removeUserModalContent.html',
            controller: 'ModalInstanceCtrl',
            backdrop: 'static',
            size: size,
            resolve: {
                items: function () {
                    return $scope.items;
                }
            }
        });
        modalInstance.result.then(function (selectedItem) {
        }, function () {
            $log.info('Modal dismissed at: ' + new Date());
        });
    };

    $scope.toggleAnimation = function () {
        $scope.animationsEnabled = !$scope.animationsEnabled;
    };
});


suntrustApp.controller('ModalInstanceCtrl', function ($scope, $uibModalInstance, items) {
    $scope.ok = function () {
        $uibModalInstance.close($scope.selected.item);
    };
    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };
});