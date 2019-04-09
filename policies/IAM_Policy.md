# Identity and Access Management Policy

The identity and access management (IAM) policy provides specific guidance around how access to resources shall be managed at {{company_name}}.  ([NIST800-53:IA-1](https://nvd.nist.gov/800-53/Rev4/control/IA-1) [NIST800-53:AC-1](https://nvd.nist.gov/800-53/Rev4/control/AC-1))

Identity is about how we know who a given person is.  Generally, this is handled by authentication to a specific system, most commonly with a username and a password.

Access management is about how we manage which resources a person should have access to.  Should they be able to log in to a time tracking system, JIRA, etc.  Which projects should they be assigned?  Which projects should they be administrators or managers for?

## Provisioning 

All provisioning of identities (users) and access shall be approved by management and tracked. ([NIST800-53:AC-4](https://nvd.nist.gov/800-53/Rev4/control/AC-4)) 

In addition, as accounts are approved, due consideration shall be given to what account type they are.  All accounts shall be identifyable as individual, group, system, applicatoin, guest, anonymous and temporary. ([NIST800-53:AC-2](https://nvd.nist.gov/800-53/Rev4/control/AC-2)) 

## Unique User Ids

All organizational and non-organizational users shall use identified (and never shared) accounts for authentication. ([NIST800-53:IA-2](https://nvd.nist.gov/800-53/Rev4/control/IA-2) [NIST800-53:IA-8](https://nvd.nist.gov/800-53/Rev4/control/IA-8)).

## Access Control

Access control is a synonym for authorization.  Access control is a critical part of security and must be enforced in systems {{company_name}} builds. ([NIST800-53:AC-3](https://nvd.nist.gov/800-53/Rev4/control/AC-3))

Least privilege is a security concept that means that users should only ever have access to the minimum things they need to do their job.  ([NIST800-53:AC-6](https://nvd.nist.gov/800-53/Rev4/control/AC-6))

At {{company_name}}, this translates in some specific ways.

1. Employees should never have access to data unless they are specifically working on a project that requires it.
1. Employees should only ever have access to data that is relevant to their job function.  For example, engineers need not have access to financial or HR data.
1. Only data that is explicitly intended to be public and accessed without authentication should ever be accessed without authentication. ([NIST800-53:AC-14](https://nvd.nist.gov/800-53/Rev4/control/AC-14))
1. For systems that are public (eg. blog), there are explicitly designated people that may post information. ([NIST800-53:AC-22](https://nvd.nist.gov/800-53/Rev4/control/AC-22))

In terms of separation of duties, it is imperative that systems in production be traceable to an exact process that provisioned them and that suitable controls be in place to prevent abuse.  That can be accomplished with controls around strict separation of duties, where one team may develop software and another would be responsible for running it.  It may also be accomplished by fully automating the deployment process in a DevOps process that can be audited.  ([NIST800-53:AC-5](https://nvd.nist.gov/800-53/Rev4/control/AC-5))



## Authentication

### Single Sign On

{{company_name}} shall leverage a common source of the truth for identity such as Office 365 or Google Apps.  This should allow any {{company_name}} employee to access their most common applications with one username and password.

Any applications used by {{company_name}} that are not SSO with our core identity provider shall be tracked in our Risk program.
([NIST800-53:IA-5](https://nvd.nist.gov/800-53/Rev4/control/IA-5))

### Multi Factor Authentication

Access to privileged systems shall require MFA.

For any other system that supports MFA with SSO, this will be required for {{company_name}} users.

### Password Complexity and History

It is expected that {{company_name} employees will select complex passwords for systems they use both for {{company_name}} and for any projects with third parties.

A general guideline is:

* 9+ characters
* If less than 14 characters, include numbers and special characters

Recent research shows that requiring users to change their passwords frequently can result in weaker passwords.  We generally support longer passphrases instead of shorter more cryptic and hard to remember passwords.  This is aligned with NIST's latest [Digital Identity Guidelines](https://pages.nist.gov/800-63-3/sp800-63-3.html)

It is acceptable but not required for {{company_name}} employees to use password managers or storage devices.

When processing passwords, {{company_name}} systems must not provide feedback mechanisms that could allow a malicious actor to identify real versus not real user identities. ([NIST800-53:IA-6](https://nvd.nist.gov/800-53/Rev4/control/IA-6))

In cases where {{company_name}} is employing cryptography, access to keys or operations related to that (eg. AWS KMS) will require appropriate authentication and access provisioning. ([NIST800-53:IA-7](https://nvd.nist.gov/800-53/Rev4/control/IA-7))

### Other Factors

1. Systems shall have a lockout after no more than 10 failed login attempts.  [NIST800-53:AC-7](https://nvd.nist.gov/800-53/Rev4/control/AC-7)
1. System shall display an approved system use message [NIST800-53:AC-8](https://nvd.nist.gov/800-53/Rev4/control/AC-8)
1. System shall display previous login information [NIST800-53:AC-9](https://nvd.nist.gov/800-53/Rev4/control/AC-9)
1. System shall prevent concurrent sessions [NIST800-53:AC-10](https://nvd.nist.gov/800-53/Rev4/control/AC-10)
1. System shall lock a session after a period of time not to exceed 30 minutes. [NIST800-53:AC-11](https://nvd.nist.gov/800-53/Rev4/control/AC-11)

### Deprovisioning Users

{{company_name}} shall leverage a single source of identity for as many operational systems as possible so that deprovisioning a user can be completed in one place.

{{company_name}} must keep track of resources that are not centrally managed and use a checklist to ensure that users are manually deprovisioned if needed.

Deprovisioning must be completed within two hours of the initiation request.

## Monthly Auditing

On a monthly basis, {{company_name}} shall review access to systems and ensure that least privilege is applied.

## Gaps

1. Guidance around Device Identification and Authorization is not covered in this policy.
([NIST800-53:IA-3](https://nvd.nist.gov/800-53/Rev4/control/IA-3))

## Audience

All {{company_name}} employees need to be aware of the policy.

## Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Identity and Access Management Policy |
| Policy Owner    | {{owner}}  |
| In Force Date   | {{in_force_date}} |
| Update Date     | {{next_update_date}} |
| Approvers       | {{approver}} |
| Applies To      | All of {{company_name}} |

### Version History 

| Version | Date | Approvers | Changes |
|--|--|--|--|
| 1.0 | {{approval_date}} | {{approver}} | Initial Policy |