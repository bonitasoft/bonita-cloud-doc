# Service Availability

## Overall availability definition

The Service is designed to be available to the customer 24 hours a day, 7 days a week, 365 days a year, except during system maintenance windows, unplanned downtime and as otherwise detailed in this chapter.

::: info
Bonitasoft will use commercially reasonable efforts to ensure a 99.9% overall availability in each billing month for its production runtime.
:::

The overall service availability value is the defined by the following:

<div style="text-align:center">
    <img src="cloud/images/master/SLAFormula.png"> 
</div> 

Where:
* Uptime is the number of minutes the runtime is available
* Downtime is number of minutes in each month the runtime is not available (see service availability exclusions)
* Total available time is number of minutes available in a given billing month (31 days: 44 640 minutes, 30 days: 43200 minutes, 29 days: 41760 minutes and 28 days: 40320 minutes)

## Service availability exclusions
The service availability does not include downtime periods due to the following:

* Scheduled or unscheduled maintenance done by Bonitasoft or the customer
* Failures resulting from actions, scripts, data, applications, connectors, tests directed, provided or performed by the customer or any third party on behalf of the customer
* Suspension due to overdue payments
* Termination of the agreement
* Factors outside Bonitasoft reasonable control(Force majeure events):
  *  Strikes or labor disputes
  * Changes resulting from government political
  * Regulatory actions or court orders
  * Natural disaster
  * Acts of war or disobedience
  * Acts against Bonitasoft
  * Denial of service attacks

## Scheduled maintenance
Scheduled maintenance events are planned, periodic updates (software e.g. Bonita updates or infrastructure), fixes or changes made by the BonitaCloud operations.

The goal is to guarantee that you will benefit from the latest capabilities, fixes and security.

Most of these maintenance tasks are performed without any interruption of the service, however some maintenance tasks may require service unavailability for a limited period.

Bonitasoft will notify the customer at least three business day before the maintenance if a downtime is required.

The notification will be done by email to a listing defined in accordance with the customer and will include the downtime duration.

## Unscheduled maintenance
Unscheduled maintenance events are any unplanned actions done by Bonitasoft or its third-party datacenter such as ad-hoc updates, fixes or changes to resolve critical issues. They may or not cause downtime.

Bonitasoft will use commercially reasonable efforts to notify the customer at least one business day before the maintenance if a downtime is required.

The notification will be done by email to a listing defined in accordance with the customer and will include the estimated downtime duration.

## Network bandwidth and latency
Bonitasoft will ensure the quality and performance of the network within its platform this includes its outside network accessibility and latency.

However, Bonitasoft is not responsible of the customer network connection to platform.

## High Availability
The service offers high availability for its production runtime.

High availability includes:
* Application redundancy (separate zone but region will remain the same) and load balancing
* Data redundancy (separate zone and continuous backup)
* Network redundancy