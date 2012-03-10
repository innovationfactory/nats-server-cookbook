Description
===========

Installs and configures a Nats Server.

Requirements
============

Platform
--------

* Ubuntu

Tested on:

* Ubuntu 10.04

Cookbooks
---------

Requires Opscode's bluepill cookbook for creating init scripts and
trotter's cloudfoundry-common cookbook.

Usage
=====

This cookbook will install a Nats Server on the target node along with
the necessary configuration files and init scripts to run it. Because
Nats is used so heavily by CloudFoundry, this cookbook relies on the
`cloudfoundry-common` cookbook for installing Ruby 1.9.2 and specifying
common config directories.

Attributes
==========

* `nats_server[:host]` - Nats will bind to this host. Default is `0.0.0.0"`.
* `nats_server[:port]` - Nats will bind to this port. Default is `4222"`.
* `nats_server[:user]` - Clients will connect to nats as this user. Default is `nats"`.
* `nats_server[:password]` - Clients will connect to nats with this password. Default is `nats"`.
* `nats_server[:pid_file]` - Where to write Nats's pid. Default is `File.join(node[:cloudfoundry_common][:pid_dir], "nats-server.pid")`.
* `nats_server[:log_file]` - Where to write Nats's logs. Default is `File.join(node[:cloudfoundry_common][:log_dir], "nats-server.log")`.

License and Author
==================

Author:: Trotter Cashion (<cashion@gmail.com>)

Copyright:: 2012 Trotter Cashion

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
