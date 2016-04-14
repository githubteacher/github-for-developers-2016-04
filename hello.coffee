http: require "http"

http.createServer( (req, res) ->
  res.sendHeader 200, {"Content-Type": "text/plain"}
  res.sendBody "Hello, GitHub!!!"
  res.finish()
).listen 8000
