# Application Security Policy

This policy describes how {{company_name}} will handle application security.  In addition to governing software built in house, this policy also applies to all outsourced and partner developed software as applicable.

## SDLC

Any software being developed will use a defined Software Development Life Cycle (SDLC).  This SDLC will include
security considerations such as:

* Traceability of code to feature request
* Code in SCCM
* Scripted build process

[NIST800-53:SA-3](https://nvd.nist.gov/800-53/Rev4/control/SA-3)

In addition, {{company_name}} will use security engineering principles. [NIST800-53:SA-8](https://nvd.nist.gov/800-53/Rev4/control/SA-8)

The SDLC shall include organization appropriate unit, integration and acceptance testing processes.

Test data shall be deliberately chosen and selected to ensure it does not include protected information.
This means test data may not be a direct copy of production data.

## Licensing

Any custom software using libraries must ensure that those libraries are not restricted for commercial use in the
manner used. [NIST800-53:CM-10](https://nvd.nist.gov/800-53/Rev4/control/CM-10)

## Security Training

All {{company_name}} employees writing code shall be trained in the OWASP Top 10 and other application security concepts.

## Code Review

All code delivered as part of a {{company_name}} product or consulting solution shall be peer reviewed for security.  This shall be done through Source Code Management (SCM) Systems such as GitHub, BitBucket or similar, with pull requests or another suitable review mechanism that tracks approval.

## Penetration Testing

Any solution produced and run by {{company_name}} that contains Tier 1 data based on the Data Classification Policy
shall be pen tested on an  annual basis.

## Monitoring and Security Auditing

Applications shall provide health status which can be monitored and produce security audits that include (at a minimum)
events related to the following key activities:

1. User provisioning / deprovisioning
1. Successful and failed login attempts
1. Application exceptions

[NIST800-53:CA-7](https://nvd.nist.gov/800-53/Rev4/control/CA-7)

## AppSec Program Activities

{{company_name}} shall run an Application Security Program that tracks applications and ensures that all applications
are subjected to appropriate controls. [NIST800-53:SA-11](https://nvd.nist.gov/800-53/Rev4/control/SA-11)

## Change Control and Configuration Management

{{company_name}} shall employ a change control process that enables a reviewer to see:

* What functionally changed, including a reference to a requirement
* Code and configurations that changed
* Potential security impact [NIST800-53:CM-4](https://nvd.nist.gov/800-53/Rev4/control/CM-4)
* Who approved the change

[NIST800-53:AU-1](https://nvd.nist.gov/800-53/Rev4/control/AU-1),
[NIST800-53:CA-6](https://nvd.nist.gov/800-53/Rev4/control/CA-6),
[NIST800-53:CM-3](https://nvd.nist.gov/800-53/Rev4/control/CM-3),
[NIST800-53:MA-1](https://nvd.nist.gov/800-53/Rev4/control/MA-1),
[NIST800-53:PM-8](https://nvd.nist.gov/800-53/Rev4/control/PM-8),
[NIST800-53:PM-10](https://nvd.nist.gov/800-53/Rev4/control/PM-10)

Changes may either be made:

1. with separation of duty between operational staff running the system and developers building a system.
1. with scripted and documented provisioning that is repeatable, tracked, and auditable

In no situations shall developers or other non operational roles have access to perform ad hoc changes on
production systems. [NIST800-53:CM-5](https://nvd.nist.gov/800-53/Rev4/control/CM-5) In any case, there should be an
explicit plan that describes how changes will be handled including what the processes are.
[NIST800-53:CM-9](https://nvd.nist.gov/800-53/Rev4/control/CM-9)

Changes to configuration should be reflected as changes in code and tracked in a source code management system.
[NIST800-53:SA-10](https://nvd.nist.gov/800-53/Rev4/control/SA-10)

### Tiers

{{company_name}} shall maintain three tiers of applications as follows.

| Tier | Description | Controls |
|------|-------------|----------|
|  1   | Highest security, any public or delivered code. Any sensitive data handling. | Training, Requirements, Code Review, Pen Testing, Dependency Hygiene, File Analysis, Signal Integration |
|  2   | Internal shared code | Security training, Code Review, Security requirements |
|  3   | Internal proof of concept code | Security training |

#### Definitions

* **Training** - Security Top 10 Training for Developers
* **Requirements** - Security is incorporated into requirements
* **Code Review** - Secure code review is done by peers to check for potential security issues
  [NIST800-53:SI-7](https://nvd.nist.gov/800-53/Rev4/control/SI-7) ensuring proper:
  * Input restriction [NIST800-53:SI-9](https://nvd.nist.gov/800-53/Rev4/control/SI-9)
  * Input validation [NIST800-53:SI-10](https://nvd.nist.gov/800-53/Rev4/control/SI-10)
  * Error handling [NIST800-53:SI-11](https://nvd.nist.gov/800-53/Rev4/control/SI-11)
  * Output handling [NIST800-53:SI-12](https://nvd.nist.gov/800-53/Rev4/control/SI-12)
* **Penetration Testing** - Ethical hacking exercises
* **Dependency hygiene** - Keeping library dependencies updated and monitoring for vulnerabilities in 3rd party
  libraries. [NIST800-53:SI-1](https://nvd.nist.gov/800-53/Rev4/control/SI-1),
  [NIST800-53:SI-2](https://nvd.nist.gov/800-53/Rev4/control/SI-2)
* **File Analysis** - Running checks to ensure uploaded or shared files are not malicious code.
  [NIST800-53:SI-3](https://nvd.nist.gov/800-53/Rev4/control/SI-3)
* **Signal Integration** - Reporting security events from the system to a centralized logging system so that security
  monitoring can be effective and inclusive of application events.
  [NIST800-53:SI-4](https://nvd.nist.gov/800-53/Rev4/control/SI-4)

### Inventory

{{company_name}} shall maintain an application inventory and track tiers and activities in the inventory.

## Architecture

{{company_name}} shall maintain an enterprise architecture and actively plan around critical infrastructure.
[NIST800-53:PM-7](https://nvd.nist.gov/800-53/Rev4/control/PM-7),
[NIST800-53:PM-8](https://nvd.nist.gov/800-53/Rev4/control/PM-8)

## Applying To Third Parties

The Application Inventory shall be used to track the status of security controls specified in this policy as they apply to the practices of applications in use which are developed by a third party.

All third parties must (at a minimum) implement the following controls as described above:

* Security Training
* Licensing
* Architecture

In some cases, additional controls may be required.  Security control requirements shall be included as a contractual obligations of the third party in all new contracts.  These requirements shall be clearly communicated at the commencement of all third party projects. All source code delivered shall be tested and reviewed according to the processes described in this policy and any associated procedures.

## Audience

{{company_name}} engineers need to be aware of the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Application Security Policy |
| Policy Owner    | {{owner}} |
| Approvers       | {{approver}} |
| Approval Date   | {{approval_date}} |
| In Force Date   | {{in_force_date}} |
| Update Date     | {{next_update_date}} |
| Applies To      | Engineering |

### Version History

| Version | Date | Approvers | Changes |
|--|--|--|--|
| 1.0 | {{approval_date}} | {{approver}} | Initial Policy |
