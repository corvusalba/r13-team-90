require 'eventmachine'
require 'em-websocket'

class WebSocketHandler
  def onopen(ws, handshake)
    ws.send "Hello Client!"
  end

  def onclose(ws)
    puts "ws closed"
  end

  def persist(event)

  end

  def onmessage(ws, msg)
    ws.send "Pong: #{msg}"
  end
end
