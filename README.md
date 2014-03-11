Tepoch
======

A simple library for interacting with unix timestamps in the terminal

Installation
-----------
    gem install tepoch

Usage
-----

Convert to human readable format
```
tepoch 1363223109 => 2013-03-14 01:05:09 UTC
tepoch 1363223109000 => 2013-03-14 01:05:09 UTC
```

You can also pass in as many timestamps as you want and it'll convert all of them
```
tepoch 1394560406 1394560407 1394560408 1394560409 =>
2014-03-11 17:53:26 UTC
2014-03-11 17:53:27 UTC
2014-03-11 17:53:28 UTC
2014-03-11 17:53:29 UTC
```
    

Difference between two times:
```
tepoch 1363223109 - 1331687109 => 365 days, 0 hours, 0 minutes, 0 seconds
```

There's even a clock. It displays the timestamp | human date time | time since epoch in human readable format
```
tepoch clock
```

Flags
-----
By default this will convert everything to utc. If you would like to keep it in local time you can pass `--local`
```
tepoch 1363223109 => 2013-03-14 01:05:09 UTC
tepoch 1363223109 --local => 2013-03-13 21:05:09 -0400
```

If you want the output to be in timestamp form you can pass the `--timestamp` flag
```
tepoch 1363223109 - 1331687109 => 365 days, 0 hours, 0 minutes, 0 seconds
tepoch 1363223109 - 1331687109 --timestamp => 31536000
```
