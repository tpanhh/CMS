﻿angular.module("MessageServices", ["ngResource"])
.factory "Message", ['$resource',($resource) ->
  $resource "/odata/Board:id/:action", {id:'@id',action:'@action'},
    query:
      method:"GET"
      params:
        $orderby:"CreateDate desc"
      isArray:true
    add:
      method: "POST"
    del:
      method: "PUT"
      params:
        action:'delete'
    renew:
      method: "PUT"
      params:
        action:'renew'
]