Graphite test
=============

Testing Graphite output, draws a fixed size graph for the data. For testing
purposes only.

Configuration
-------------

Edit `config.yml` and add your server credentials and some Graphite url, which
returns json. This version requires a response with five different graphs.

Server
------

Requires Ruby and Sinatra.

```
gem install sinatra
cp config.yml.sample config.yml # Edit the config before running the server.
ruby server.rb
```
