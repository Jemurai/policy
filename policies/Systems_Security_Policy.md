# Systems Security Policy

This policy describes how systems security will be handled.

## Security Standards

Production server systems shall be hardened.  Part of hardening a system is disabling services and capabilities that are not needed.  [NIST800-53:CM-7](https://nvd.nist.gov/800-53/Rev4/control/CM-7)

Parts of the hardening process will be codified in a baseline configuration.  All systems shall be subject to configuration management to ensure they are aligned to best practices.
[NIST800-53:CM-1](https://nvd.nist.gov/800-53/Rev4/control/CM-1), [NIST800-53:CM-2](https://nvd.nist.gov/800-53/Rev4/control/CM-2)  Changes to baseline configurations will be subject to the normal Change Control process described in the Application Security Policy. [NIST800-53:CM-3](https://nvd.nist.gov/800-53/Rev4/control/CM-3), [NIST800-53:CM-6](https://nvd.nist.gov/800-53/Rev4/control/CM-6)

## Vulnerability Scanning

As described in the [Network Security Policy](./Network_Security_Policy.md), vulnerability scanning will be performed at least quarterly.

## Patching

Unless otherwise identified, vendor patches shall be applied as soon as they are available.

### Laptops and Desktop Computers

Laptops and desktop computers shall be enrolled in automatic updates to ensure they are patched as quickly as possible.

[NIST800-53:CM-1](https://nvd.nist.gov/800-53/Rev4/control/CM-1), [NIST800-53:CM-2](https://nvd.nist.gov/800-53/Rev4/control/CM-2)

### Servers, Containers and Virtual Machines

Servers shall be patched within 30 days for all vendor supplied patches.

In the event that servers are rebuilt frequently, that process must incorporate updates to the underlying OS and components that are used as a part of system provisioning.  This also applies if the server is virtualized in a VM or Container (Eg. Docker).

[NIST800-53:CM-1](https://nvd.nist.gov/800-53/Rev4/control/CM-1), [NIST800-53:CM-2](https://nvd.nist.gov/800-53/Rev4/control/CM-2)

### Critical Patches

In the event that there is a critical severity security issue, for example an unauthenticated remote command injection vulnerability that would allow an attacker to immediately take over a system - the explicit expectation is that the underlying vulnerability will be patched within 48 hours.

## Security Monitoring and Auditing

Servers and infrastructure shall be monitorable for health status and shall produce centralized security audits that include events around at least the following key activities:

1. User provisioning / deprovisioning
1. Logins / Failed logins
1. Exceptions
[NIST800-53:CA-7](https://nvd.nist.gov/800-53/Rev4/control/CA-7)

## DLP

Since DLP (Data Loss Prevention) solutions inherently involve monitoring user behavior and intercepting traffic or analyzing data in ways that inherently compromise security, we do not employ DLP solutions.

As an active alternative countermeasure, we offer training and clear definition of data classification measures.

## Audience

{{company_name}} engineers need to be aware of the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Systems Security Policy |
| Policy Owner    | Konda |
| In Force Date   | 12/31/2017 |
| Approval Date   | 12/31/2017 |
| Update Date     | 12/31/2018 |
| Approvers       | Konda |
| Applies To      | Engineering |
