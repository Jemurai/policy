# Application Security Policy

This policy describes how application security will be handled.

## Security Training

All Jemurai employees writing code shall be trained in the OWASP Top 10 and other security concepts.

## Code Review

All code delivered as part of a Jemurai product or consulting solution shall be peer reviewed for security by Jemurai consultants.  This shall be done through GitHub pull requests.

## Penetration Testing

Any solution produced and run by Jemurai shall be pen tested on a quarterly basis.

## AppSec Program Activities

Jemurai shall run an Application Security Program that tracks applications and ensures that all applications are subjected to appropriate controls.

## Change Control

Jemurai shall employ a change control process that enables a reviewer to see:

* What changed functionally, including a reference to a requirement
* The code and configurations that changed
* Who approved it

### Tiers

Jemurai shall maintain three tiers of applications as follows.

| Tier | Description | Controls |
|------|-------------|----------|
|  1   | Highest security, any public or delivered code. Any sensitive data handling. | Code Review, Training, Pen Testing, Dependency Hygiene |
|  2   | Internal shared code | Security training, Code Review |
|  3   | Internal proof of concept code | Security training |

### Inventory

Jemurai shall maintain an application inventory and track tiers and activities in the inventory.

## Audience

Jemurai engineers need to be aware of the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Application Security Policy |
| Policy Owner    | Konda |
| In Force Date   | 12/31/2017 |
| Approval Date   | 12/31/2017 |
| Update Date     | 08/01/2018 |
| Approvers       | Konda |
| Applies To      | Engineering |
