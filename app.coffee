express = require('express')
request = require('request')
moment = require('moment')
logfmt = require('logfmt')
app = express()
port = Number(process.env.PORT or 4000)

server = app.listen port, -> console.log 'Listening on port ' + 4000

getUrlForStop = (stop) ->
  "http://www.tramtracker.com.au/Controllers/GetNextPredictionsForStop.ashx?stopNo=#{stop}&routeNo=0&isLowFloor=false"

parseDateString = (string) ->
  matches = string.match(/\/Date\((\d+)\+\d+\)\//)
  moment(Number(matches[1]))

getTimesForStop = (stop = 1234, callback) ->
  request getUrlForStop(stop), (apiError, apiResponse, apiBody) ->
    json = JSON.parse(apiBody)
    timeResponded = parseDateString(json.timeResponded)
    times = json.responseObject or []
    results = for time in times
      arrivalTime = parseDateString(time.PredictedArrivalDateTime)

      number = time.RouteNo
      minutes = (arrivalTime - timeResponded) / 1000 / 60
      string = arrivalTime.from(timeResponded, true)

      { number, minutes, string }

    callback?(results)

app.use logfmt.requestLogger()

app.get '/stop/:id', (req, res) ->
  getTimesForStop req.params.id, (results) ->
    res.send(results)

app.use (err, req, res, next) ->
  console.error err.stack
  res.send 500, 'Error 500'

app.get '/', (req, res) ->
  res.sendfile('index.html')
