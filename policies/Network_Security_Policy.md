# Network Security Policy

This policy describes how {{company_name}} will handle network security.
[NIST800-53:SC-1](https://nvd.nist.gov/800-53/Rev4/control/SC-1)

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
1. Different environments (Prod, Dev) shall be in different networks (vpcs)

[NIST800-53:SC-2](https://nvd.nist.gov/800-53/Rev4/control/SC-2), [NIST800-53:SC-4](https://nvd.nist.gov/800-53/Rev4/control/SC-4), [NIST800-53:SC-7](https://nvd.nist.gov/800-53/Rev4/control/SC-7), [NIST800-53:SC-32](https://nvd.nist.gov/800-53/Rev4/control/SC-32)


### Default Port Status

Between network segments, only the ports required for data access shall be opened.

### Remote Administration and Management

Remote access to administrative controls and management systems is expected in a cloud based architecture.  Remote access should require both a second factor (eg. MFA with Authy) and in appropriate cases, structured network that administrators must come through to access the management systems.  [NIST800-53:AC-17](https://nvd.nist.gov/800-53/Rev4/control/AC-17)

### Integration

Integration with 3rd party systems shall be approved by {{company_name}} security officer.  Both partner (vendor) security evaluation and data flow will also be considered when building connections to 3rd party sytems.  [NIST800-53:CA-3](https://nvd.nist.gov/800-53/Rev4/control/CA-3)

## Wireless

{{company_name}} may use wireless networks in offices.  Such wireless networks should not be public and should use current industry standard security configurations (eg. no WEP).  In the event that they are shared networks, a VPN should be used to isolate company traffic from other traffic on the local wireless network.  

If {{company_name}} allows personal devices to connect to wireless networks, these must be public networks not the company internal network.
[NIST800-53:AC-18](https://nvd.nist.gov/800-53/Rev4/control/AC-18),
[NIST800-53:AC-19](https://nvd.nist.gov/800-53/Rev4/control/AC-19)

## External

Any port being open externally other than 22, 80 and 443 shall require a specific exception and will be tracked.

### Vulnerability Scanning

We shall conduct quarterly vulnerability scans to ensure that any externally facing systems are being identified and patched properly.

### Customer Testing

Customers may conduct their own security assessments of {{company_name}} applications. These must:

1. Be scheduled in advance at a mutually agreeable time
1. Be co-ordinated and scoped clearly with our security officer
1. Include communication of any findings or issues identified back to {{company_name}}

[NIST800-53:CA-1](https://nvd.nist.gov/800-53/Rev4/control/CA-1)

## Denial Of Service

If it is deemed critical for an application, {{company_name}} will leverage denial of service protection to support availability requirements.
[NIST800-53:SC-5](https://nvd.nist.gov/800-53/Rev4/control/SC-5)

## SPAM

{{company_name}} will leverage email platform integrated SPAM protection.  [NIST800-53:SI-8](https://nvd.nist.gov/800-53/Rev4/control/SI-8)

## All Traffic on TLS

All traffic external to the company will be transmitted over TLS where integrity and confidentiality can be ensured.
[NIST800-53:SC-8](https://nvd.nist.gov/800-53/Rev4/control/SC-8), [NIST800-53:SC-9](https://nvd.nist.gov/800-53/Rev4/control/SC-9), [NIST800-53:SC-12](https://nvd.nist.gov/800-53/Rev4/control/SC-12), [NIST800-53:SC-13](https://nvd.nist.gov/800-53/Rev4/control/SC-13),  [NIST800-53:SC-14](https://nvd.nist.gov/800-53/Rev4/control/SC-14)

Certificates shall be obtained from a commercial certificate authority or Let's Encrypt.
 [NIST800-53:SC-17](https://nvd.nist.gov/800-53/Rev4/control/SC-17)

## Miscellaneous Network Items

* All network connections should close at the completion of a session or a period of inactivity. [NIST800-53:SC-10](https://nvd.nist.gov/800-53/Rev4/control/SC-10)
* Any VOIP systems shall be authorized and monitored.  [NIST800-53:SC-19](https://nvd.nist.gov/800-53/Rev4/control/SC-19)
* Maintain session authenticity  [NIST800-53:SC-23](https://nvd.nist.gov/800-53/Rev4/control/SC-23)
* Fault tolerant DNS  [NIST800-53:SC-20](https://nvd.nist.gov/800-53/Rev4/control/SC-20),[NIST800-53:SC-22](https://nvd.nist.gov/800-53/Rev4/control/SC-22)

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