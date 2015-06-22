# Introducing the SPS-sub-ping gem

    require 'sps-sub-ping'

    sp = SPSSubPing.new host: 'sps', identifier: 't123'
    sp.start

Observed:

<pre>
MESSAGE: system/watchdog/ping: ping
MESSAGE: system/watchdog/pong: t123 responded
</pre>

## Resources

* ?sps-sub-ping https://rubygems.org/gems/sps-sub-ping?

spssubping gem ping
