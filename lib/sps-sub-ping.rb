#!/usr/bin/env ruby

# file: sps-sub-ping.rb


require 'sps-sub'
require 'sps-pub'


class SPSSubPing < SPSSub

  def initialize(port: '59000', host: nil, address: nil, 
                              topic: 'system/watchdog/ping', identifier: nil)

    raise 'SPSSubPing: identifier must be provided' unless identifier

    @host = host || address || 'localhost'
    @port = port.to_s
    @topic, @identifier = topic, identifier

    super(host: @host, port: port)

    @pub = SPSPub.new address: host, port: port

  end

  def start()
    subscribe(topic: @topic)
  end

  def onmessage(msg)
    @pub.notice @topic.sub(/ping$/,'pong') + ": #{@identifier} responded"
  end
end

if __FILE__ == $0 then
  
  host, identifier = ARGV
  sp = SPSSubPing.new host: host, identifier: identifier
  sp.start
  
end
