# Identity and Access Management Policy

The identity and access management (IAM) policy provides specific guidance around how access to resources shall be managed at Jemurai.

Identity is about how we know who a given person is.  Generally, this is handled by authentication to a specific system, most commonly with a username and a password.

Access management is about how we manage which resources a person should have access to.  Should they be able to log in to a time tracking system, JIRA, etc.  Which projects should they be assigned?  Which projecs should they be administrators or managers for?

# Least Privilege

Least privilege is a security concept that means that users should only ever have access to the minimum things they need to do their job.

At Jemurai, this translates in some specific ways.  
1. Employees should never have access to client data unless they are specifically working on that client project.
1. Employees should only ever have access to data that is relevant to their job function.  For example, engineers need not have access to financial or HR data.

# Sharing Documents

With an increasing focus on cloud based document repositories, it is critical for employees to understand that direct access to Jemurai documents or code artifacts should never be given to clients or third parties except for under very specific circumstances and with the explicit approval of Matt Konda or an acting security officer.

# Single Sign On

Whenever possible, Jemurai shall leverage a common source of the truth for identity such as Google Apps.  This should allow any Jemurai employee to access their most common applications with one username and password.

# Multi Factor Authentication

For any system that supports MFA with SSO, this will be required for Jemurai users.  Jemurai supports SMS or Authenticator based two factor.

# Password Complexity and History

It is expected that Jemurai employees will select complex passwords for systems they use both for Jemurai and for any projects with third parties.

A general guideline is: 
* 9+ characters
* If less than 14 characters, include numbers and special characters

Recent research shows that requiring users to change their passwords frequently can result in weaker passwords.  We generally support longer passphrases instead of shorter more cryptic and hard to remember passwords.

It is acceptable but not required for Jemurai employees to use password managers or storage devices.

# Deprovisioning Users

Jemurai shall leverage a single source of identity for as many operational systems as possible so that deprovisioning a user can be completed in one place.

Jemurai must keep track of resources that are not centrally managed and use a checklist to ensure that users are manually deprovisioned if needed.

Deprovisioning must be completed within two hours of the initiation request.

# Monthly Auditing

On a monthly basis, Jemurai shall review access to systems and ensure that least privilege is applied.

# Audience

All Jemurai employees need to be aware of the policy.

# Policy Tracking

| Tracking Item   | Detail |
|-----------------|--------|
| Policy Name     | Identity and Access Management Policy |
| Policy Owner    | Konda |
| In Force Date   | 12/31/2017 |
| Approval Date   | 12/31/2017 |
| Update Date     | 12/31/2018 |
| Approvers       | Konda, Caldwell |
| Applies To      | All of Jemurai |

# Trackback
[Master Security Policy](../Master_Security_Policy.md)