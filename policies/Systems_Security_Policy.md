# Systems Security Policy

This policy describes how systems security will be handled.

## Security Standards

Production server systems shall be hardened.  Part of hardening a system is disabling services and capabilities that
are not needed.  [NIST800-53:CM-7](https://nvd.nist.gov/800-53/Rev4/control/CM-7)  {{company_name}} and third party
systems must be used in a secure configuration. [NIST800-53:SA-5](https://nvd.nist.gov/800-53/Rev4/control/SA-5)  

Parts of the hardening process will be codified in a baseline configuration.  All systems shall be subject to
configuration management to ensure they are aligned to best practices.
[NIST800-53:CM-1](https://nvd.nist.gov/800-53/Rev4/control/CM-1), [NIST800-53:CM-2](https://nvd.nist.gov/800-53/Rev4/control/CM-2)
Changes to baseline configurations will be subject to the normal Change Control process described in the Application
Security Policy. [NIST800-53:CM-3](https://nvd.nist.gov/800-53/Rev4/control/CM-3),
[NIST800-53:CM-6](https://nvd.nist.gov/800-53/Rev4/control/CM-6)

## Installing Software

Users may have rights to install software on their systems (local or server) provided it is needed, meets license
requirements [NIST800-53:SA-6](https://nvd.nist.gov/800-53/Rev4/control/SA-6) is run with a secure configuration and
goes through the Partner process if applicable.  [NIST800-53:SA-7](https://nvd.nist.gov/800-53/Rev4/control/SA-7)

## Vulnerability Scanning

As described in the Network Security Policy, vulnerability scanning will be performed
at least quarterly. [NIST800-53:RA-5](https://nvd.nist.gov/800-53/Rev4/control/RA-5)

## Patching

Unless otherwise identified, vendor patches shall be applied as soon as they are available.  The patching process
shall be documented, implemented by a controlled group of operators using tools that are limited

[NIST800-53:MA-1](https://nvd.nist.gov/800-53/Rev4/control/MA-1),
[NIST800-53:MA-2](https://nvd.nist.gov/800-53/Rev4/control/MA-2),
[NIST800-53:MA-3](https://nvd.nist.gov/800-53/Rev4/control/MA-3),
[NIST800-53:MA-4](https://nvd.nist.gov/800-53/Rev4/control/MA-4),
[NIST800-53:MA-5](https://nvd.nist.gov/800-53/Rev4/control/MA-5)

{{company_name}} will obtain maintenance support contracts aligned to BCP needs and business priorities.
[NIST800-53:MA-6](https://nvd.nist.gov/800-53/Rev4/control/MA-6)

### Laptops and Desktop Computers

Laptops and desktop computers shall be enrolled in automatic updates to ensure they are patched as quickly as possible.
[NIST800-53:CM-1](https://nvd.nist.gov/800-53/Rev4/control/CM-1),
[NIST800-53:CM-2](https://nvd.nist.gov/800-53/Rev4/control/CM-2)

Shared computers must be physically marked as shared so that a user knows this.
[NIST800-53:SC-15](https://nvd.nist.gov/800-53/Rev4/control/SC-15)

### Servers, Containers and Virtual Machines

Servers shall be patched within 30 days for all vendor supplied patches.

In the event that servers are rebuilt frequently, that process must incorporate updates to the underlying OS and
components that are used as a part of system provisioning.  This also applies if the server is virtualized in a VM or
Container (e.g. Docker).

[NIST800-53:CM-1](https://nvd.nist.gov/800-53/Rev4/control/CM-1),
[NIST800-53:CM-2](https://nvd.nist.gov/800-53/Rev4/control/CM-2)

### Critical Patches

In the event that there is a critical severity security issue, for example an unauthenticated remote command injection
vulnerability that would allow an attacker to immediately take over a system - the explicit expectation is that the
underlying vulnerability will be patched within 48 hours.

## Security Monitoring and Auditing

Servers and infrastructure shall provide health status which can be monitored and produce centralized security
audits that include (at a minimum) events related to the following key activities:

1. User provisioning / deprovisioning
1. Successful and failed login attempts
1. Exceptions

[NIST800-53:CA-7](https://nvd.nist.gov/800-53/Rev4/control/CA-7)

## Data Loss Prevention

Since Data Loss Prevention (DLP) solutions inherently involve monitoring user behavior and intercepting traffic or
analyzing data in ways that inherently compromise security, we do not employ DLP solutions.

As an active alternative countermeasure, we offer training and clear definition of data classification measures.

## Mobile Code

Browsers will be expected to support JavaScript and PDF.  Java, ActiveX, Postscript, Shockwave, Flash, and VBScript
will not be supported.

VBScript may be supported in Spreadsheets.

[NIST800-53:SC-18](https://nvd.nist.gov/800-53/Rev4/control/SC-18)

## Secure Data Deletion

When systems are retired or reused by different users with different access levels, data must be securely deleted.
[NIST800-53:MP-6](https://nvd.nist.gov/800-53/Rev4/control/MP-6)

## Audience

{{company_name}} engineers need to be aware of the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Systems Security Policy |
| Policy Owner    | {{owner}} |
| Approvers       | {{approver}} |
| Approval Date   | {{approval_date}} |
| In Force Date   | {{in_force_date}} |
| Update Date     | {{next_update_date}} |
| Applies To      | All of {{company_name}} |

### Version History

| Version | Date | Approvers | Changes |
|--|--|--|--|
| 1.0 | {{approval_date}} | {{approver}} | Initial Policy |
