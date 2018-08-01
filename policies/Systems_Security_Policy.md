# Systems Security Policy

This policy describes how systems security will be handled.

# Security Standards

Production server systems shall be hardened.

# Vulnerability Scanning

As described in the [Network Security Policy](./Network_Security_Policy.md), vulnerability scanning will be performed at least quarterly.

# Patching
Unless otherwise identified, vendor patches shall be applied as soon as they are available.  

## Laptops and Personal Computers
Laptops and personal computers shall be enrolled in automatic updates to ensure they are patched as quickly as possible.

## Servers
Servers are rebuilt at least monthly. Each time a server is rebuilt, it is fully updated and patched. Thus, servers will always be up to date within at least 30 days.

## Critical Patches
In the event that there is a critical severity security issue, for example an unauthenticated remote command injection vulnerability that would allow an attacker to immediately take over a system - the explicit expectation is that the underlying vulnerability will be patched within 72 hours.

# DLP
Since DLP (Data Loss Prevention) solutions inherently involve monitoring user behavior and intercepting traffic or analyzing data in ways that inherently compromise security, we do not employ DLP solutions.

As an active alternative countermeasure, we offer training and clear definition of data classification measures.

# Audience

Jemurai engineers need to be aware of the policy.

# Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Systems Security Policy |
| Policy Owner    | Konda |
| In Force Date   | 12/31/2017 |
| Approval Date   | 12/31/2017 |
| Update Date     | 12/31/2018 |
| Approvers       | Konda |
| Applies To      | Engineering |

# Trackback
[Master Security Policy](../Master_Security_Policy.md)