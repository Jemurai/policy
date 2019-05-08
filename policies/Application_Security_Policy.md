# Application Security Policy

This policy describes how {{company_name}} will handle application security.

## Security Training

All {{company_name}} employees writing code shall be trained in the OWASP Top 10 and other application security concepts.

## Code Review

All code delivered as part of a {{company_name}} product or consulting solution shall be peer reviewed for security.  This shall be done through GitHub pull requests or another suitable review mechanism that tracks approval.

## Penetration Testing

Any solution produced and run by {{company_name}} that contains Tier 1 data based on the Data Classification Policy shall be pen tested on an  annual basis.

## AppSec Program Activities

{{company_name}} shall run an Application Security Program that tracks applications and ensures that all applications are subjected to appropriate controls.

## Change Control

{{company_name}} shall employ a change control process that enables a reviewer to see:

* What changed functionally, including a reference to a requirement
* The code and configurations that changed
* Who approved it

[NIST800-53:AU-1](https://nvd.nist.gov/800-53/Rev4/control/AU-1)

### Tiers

{{company_name}} shall maintain three tiers of applications as follows.

| Tier | Description | Controls |
|------|-------------|----------|
|  1   | Highest security, any public or delivered code. Any sensitive data handling. | Code Review, Training, Pen Testing, Dependency Hygiene |
|  2   | Internal shared code | Security training, Code Review |
|  3   | Internal proof of concept code | Security training |

### Inventory

{{company_name}} shall maintain an application inventory and track tiers and activities in the inventory.

## Audience

{{company_name}} engineers need to be aware of the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Application Security Policy |
| Policy Owner    | {{owner}}  |
| In Force Date   | {{in_force_date}} |
| Update Date     | {{next_update_date}} |
| Approvers       | {{approver}} |
| Applies To      | Engineering |

### Version History

| Version | Date | Approvers | Changes |
|--|--|--|--|
| 1.0 | {{approval_date}} | {{approver}} | Initial Policy |