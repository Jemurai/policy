# Identity and Access Management Policy

The identity and access management (IAM) policy provides specific guidance around how access to resources shall be managed at {{company_name}}.

Identity is about how we know who a given person is.  Generally, this is handled by authentication to a specific system, most commonly with a username and a password.

Access management is about how we manage which resources a person should have access to.  Should they be able to log in to a time tracking system, JIRA, etc.  Which projects should they be assigned?  Which projects should they be administrators or managers for?

> NIST 800-53: IA-1


## Least Privilege

Least privilege is a security concept that means that users should only ever have access to the minimum things they need to do their job.

At {{company_name}}, this translates in some specific ways.

1. Employees should never have access to data unless they are specifically working on a project that requires it.
1. Employees should only ever have access to data that is relevant to their job function.  For example, engineers need not have access to financial or HR data.

## Sharing Documents

With an increasing focus on cloud based document repositories, it is critical for employees to understand that direct access to {{company_name} documents or code artifacts should never be given to clients, partners or third parties except for under very specific circumstances and with the explicit approval of the security officer.

## Single Sign On

Whenever possible, {{company_name}} shall leverage a common source of the truth for identity such as Google Apps.  This should allow any {{company_name}} employee to access their most common applications with one username and password.

Any applications used by {{company_name}} that are not SSO with our core identity provider shall be tracked in our Risk program.

## Multi Factor Authentication

For any system that supports MFA with SSO, this will be required for {{company_name}} users.  {{company_name} recommends Authy based two factor authentication.

## Password Complexity and History

It is expected that {{company_name} employees will select complex passwords for systems they use both for {{company_name}} and for any projects with third parties.

A general guideline is:

* 9+ characters
* If less than 14 characters, include numbers and special characters

Recent research shows that requiring users to change their passwords frequently can result in weaker passwords.  We generally support longer passphrases instead of shorter more cryptic and hard to remember passwords.

It is acceptable but not required for {{company_name}} employees to use password managers or storage devices.

## Deprovisioning Users

{{company_name}} shall leverage a single source of identity for as many operational systems as possible so that deprovisioning a user can be completed in one place.

{{company_name}} must keep track of resources that are not centrally managed and use a checklist to ensure that users are manually deprovisioned if needed.

Deprovisioning must be completed within two hours of the initiation request.

## Monthly Auditing

On a monthly basis, {{company_name}} shall review access to systems and ensure that least privilege is applied.

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