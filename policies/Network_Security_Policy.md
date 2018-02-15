# Network Security Policy

This policy describes how network security will be handled.

# Internal

## Segmentation

In any case where systems are developed or multiple computers are joined together, the network shall be segmented such that: 
1. Databases are in separate networks, security groups or segments.
    1. Databases shall accept connections only from known networks
    1. Databases shall accept connections only on known ports
1. App servers are in separate networks, accepting connections
    1. Over TLS
    1. On specific ports
    1. Connecting to data access and other services on specific ports
1. Web servers and/or load balancers shall be the only externaly facing systems
    1. Exposing port 80 and 443.

## Default Port Status

Between network segments, only the ports required for data access
shall be opened.

# External 
Any port being open externaly other than 22, 80 and 443 shall require a specific exception and will be tracked.

# Vulnerability Scanning

We shall conduct quarterly vulnerability scans to ensure that any externally facing systems are being identified and patched properly.

# Audience

All Jemurai employees need to be aware of the policy.

# Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Network Security Policy |
| Policy Owner    | Konda |
| In Force Date   | 12/31/2017 |
| Approval Date   | 12/31/2017 |
| Update Date     | 12/31/2018 |
| Approvers       | Konda |
| Applies To      | All of Jemurai |

# Trackback
[Master Security Policy](../Master_Security_Policy.md)