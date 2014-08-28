## 1.6.0:

* Add server mode
* Add test-kitchen

## 1.5.1:

* Remove all trace of CopperEgg from cookbook

## 1.5.0:

* Uninstall CopperEgg monitoring

## 1.4.1:

* Use copperegg ~> 0.2.3 to fix idempotency; i.e., the collector re-installing every chef run

## 1.4.0:

* Undo previous version; always install NR server monitoring (turns out, it’s free)

## 1.3.0:

* Determine whether or not to install New Relic server monitoring based on an attribute

## 1.2.0:

* Use newrelic-ng instead of newrelic
* Optimize to only make one `Chef::EncryptedDataBagItem.load()` call
* Pin to Berkshelf ~> 2.0.10
* Use generic email address
* Flesh out README

## 1.1.0:

* Add Datadog

## 1.0.3:

* Re-enabled CopperEgg

## 1.0.2:

* Temporarily disabled copperegg because their API is not working and this is blocking chef runs.

## 1.0.1:

* Introduced the changelog
* Consolidated New Relic agent into monitoring cookbook
