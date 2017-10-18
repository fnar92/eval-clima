(function () { 
	'use strict';
	
	angular
	.module('app.utils')
	.factory('UtilService', UtilService );

	function UtilService () {
            
            var service={};
            service.toDate=toDate;
            service.date=date;
            return service;
            
            function toDate(dateString){
                if(dateString===undefined||dateString===null)return;
                var y=dateString.split(' ');
                if(y[1]!==undefined){
                    var x=y[0].split('-');
                    var xx=y[1].split(':');
                    //return x[2]+'/'+x[1]+'/'+x[0]+' '+xx[0]+':'+xx[1]
                    //console.log("fecha: "+x[2]+'/'+x[1]+'/'+x[0]);;
                    return x[2]+'/'+x[1]+'/'+x[0];
                }else{
                    var x=dateString.split('-');

                    //console.log("fecha: "+x[2]+'/'+x[1]+'/'+x[0]);
                    return x[2]+'/'+x[1]+'/'+x[0];
                }
            }
            
            function date(d){
                var mySQLDate = d;
                return new Date(Date.parse(mySQLDate.replace('-','/','g')));
            }
            
	}

})();