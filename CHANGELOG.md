# CHANGELOG

## 2.0.12

* Turning off consul memory check

## 2.0.10

* Removed filebeat overrides

## 2.0.1

* Raise consul memory alert threshold to 120M

## 2.0.0

* Bump shinken cookbook to v2

## 1.6.5

* Make the Consul memory check schedule a little more forgiving

## 1.6.4

* Monitor Consul memory usage across all hosts

## 1.6.3

* New shinken cookbook no longer requires command_name to be defined (removing it)
* Test on Ubuntu 14.04
* Move check_remote_process to the core Shinken cookbook

## 1.6.2

* Make slack notification the default for host failures
* Berksfile: Prefer our chef server as cookbook source

## 1.6.1

* Pass community string to inode monitor command
* Switch to non-encrypted test data bag

## 1.6.0

* Add inode storage service
* Add an everything hostgroup and make storage_inodes a part of it

## 1.5.0

* Make et_hostname a real (rather than Test Kitchen) dependency
* Version bump shinken to 1.7 (and relax strict versioning)

## 1.4.2

* Change the syntax of the check_ssh command a bit

## 1.4.1

* Add check_remote_process command definition

## 1.4.0

* Bump shinken to 1.6.0
 
## 1.3.0

* Bump shinken to 1.5.0

## 1.2.3

* Add check_http_nostatus command ([Trello Card #656]|https://trello.com/c/1mq240DJ/656-monitor-mesos-slave-port-5051-with-shinken)

## 1.2.2

* Use serverspec to test for the right entry in /etc/hosts
* Auto-populate /etc/hosts with non-VPC hosts
* Use environment "dev" for testing instead of "stage"

## 1.2.1

* Bump shinken 1.2.1

## 1.2.0

* Use Supermarket cookbook source
* Replace berkshelf cookbook API source with supermarket.chef.io
* Version bump shinken 1.2.0

## 1.1.2

* Bump shinken version 1.1.2

## 1.1.1

* Bump shinken version v1.1.1
* Add shinken agent key

## 1.1.0

* Force source installation of shinken
* Bump shinken 1.1.0

## 1.0.7

* Bump shinken 1.0.6

## 1.0.6

* Bump shinken 1.0.5

## 1.0.5:

* Bump shinken 1.0.4
* Add addl_hosts_entries

## 1.0.4:

* Bump shinken 1.0.3

## 1.0.3:

* Bump shinken 1.0.2

## 1.0.2:

* Add includes for webui and broker

## 1.0.1:

* First release!
