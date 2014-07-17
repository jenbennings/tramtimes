Examples:
https://github.com/stevenocchipinti/tramtracker/blob/master/lib/tramtracker/api.rb

URL:
`http://www.tramtracker.com.au/Controllers/GetNextPredictionsForStop.ashx?stopNo={{ID}}&routeNo=0&isLowFloor=false`

Route 1 (to city): `1234`
Route 1 (from city): `2234`
Route 112 (to city): `1396`
Route 112 (from city): `2396`

Sample response:

```json
{
  "errorMessage":null,
  "hasError":false,
  "hasResponse":true,
  "responseObject":[
  {
    "__type":"NextPredictedRoutesCollectionInfo",
    "AirConditioned":false,
    "Destination":"East Coburg",
    "DisplayAC":false,
    "DisruptionMessage":{
      "DisplayType":"Text",
      "MessageCount":0,
      "Messages":[]
    },
    "HasDisruption":false,
    "HasSpecialEvent":false,
    "HeadBoardRouteNo":"1",
    "InternalRouteNo":1,
    "IsLowFloorTram":false,
    "IsTTAvailable":true,
    "PredictedArrivalDateTime":"\/Date(1405472718000+1000)\/",
    "RouteNo":"1",
    "SpecialEventMessage":"",
    "TripID":0,
    "VehicleNo":2105
  },{
    "__type":"NextPredictedRoutesCollectionInfo",
    "AirConditioned":false,
    "Destination":"East Coburg",
    "DisplayAC":false,
    "DisruptionMessage":{
      "DisplayType":"Text",
      "MessageCount":0,
      "Messages":[]
    },
    "HasDisruption":false,
    "HasSpecialEvent":false,
    "HeadBoardRouteNo":"1",
    "InternalRouteNo":1,
    "IsLowFloorTram":false,
    "IsTTAvailable":true,
    "PredictedArrivalDateTime":"\/Date(1405473300000+1000)\/",
    "RouteNo":"1",
    "SpecialEventMessage":"",
    "TripID":0,
    "VehicleNo":196
  },{
    "__type":"NextPredictedRoutesCollectionInfo",
    "AirConditioned":false,
    "Destination":"East Coburg",
    "DisplayAC":false,
    "DisruptionMessage":{
      "DisplayType":"Text",
      "MessageCount":0,
      "Messages":[]
    },
    "HasDisruption":false,
    "HasSpecialEvent":false,
    "HeadBoardRouteNo":"1",
    "InternalRouteNo":1,
    "IsLowFloorTram":false,
    "IsTTAvailable":true,
    "PredictedArrivalDateTime":"\/Date(1405473960000+1000)\/",
    "RouteNo":"1",
    "SpecialEventMessage":"",
    "TripID":0,
    "VehicleNo":2104
  }],
  "timeRequested":"\/Date(1405472709928+1000)\/",
  "timeResponded":"\/Date(1405472710006+1000)\/",
  "webMethodCalled":"GetNextPredictedRoutesCollection"
}
```
