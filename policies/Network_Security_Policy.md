# Network Security Policy

This policy describes how {{company_name}} will handle network security.

## Internal

## Segmentation

In any case where systems are developed or multiple computers are joined together, the network shall be segmented such that:

1. Databases are in separate networks, security groups or segments.
    1. Databases shall accept connections only from known networks
    1. Databases shall accept connections only on known ports
1. App servers are in separate networks, accepting connections
    1. Over TLS
    1. On specific ports
    1. Connecting to data access and other services on specific ports
1. Web servers and/or load balancers shall be the only externally facing systems
    1. Exposing port 80 and 443.

### Default Port Status

Between network segments, only the ports required for data access shall be opened.

### Remote Administration and Management

Remote access to administrative controls and management systems is expected in a cloud based architecture.  Remote access should require both a second factor (eg. MFA with Authy) and in appropriate cases, structured network that administrators must come through to access the management systems.  [NIST800-53:AC-17](https://nvd.nist.gov/800-53/Rev4/control/AC-17)

## Wireless

{{company_name}} may use wireless networks in offices.  Such wireless networks should not be public and should use current industry standard security configurations (eg. no WEP).  In the event that they are shared networks, a VPN should be used to isolate company traffic from other traffic on the local wireless network.  

If {{company_name}} allows personal devices to connect to wireless networks, these must be public networks not the company internal network.
[NIST800-53:AC-18](https://nvd.nist.gov/800-53/Rev4/control/AC-18),
[NIST800-53:AC-19](https://nvd.nist.gov/800-53/Rev4/control/AC-19)

## External

Any port being open externally other than 22, 80 and 443 shall require a specific exception and will be tracked.

## Vulnerability Scanning

We shall conduct quarterly vulnerability scans to ensure that any externally facing systems are being identified and patched properly.

## Customer Testing

Customers may conduct their own security assessments of {{company_name}} applications. These must:

1. Be scheduled in advance at a mutually agreeable time
1. Include communication of any findings or issues identified back to {{company_name}}.

## Audience

All {{company_name}} employees need to be aware of the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Network Security Policy |
| Policy Owner    | {{owner}}  |
| In Force Date   | {{in_force_date}} |
| Update Date     | {{next_update_date}} |
| Approvers       | {{approver}} |
| Applies To      | All of {{company_name}} |

### Version History

| Version | Date | Approvers | Changes |
|--|--|--|--|
| 1.0 | {{approval_date}} | {{approver}} | Initial Policy |